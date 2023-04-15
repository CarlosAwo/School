class ProfessorsController < ApplicationController
  before_action :set_professor, only: %i[ show edit update destroy ]

  def index
    @professors = Professor.all
  end

  def show
  end

  def new
    @professor = Professor.new
  end

  def edit
  end

  def create
    @professor = Professor.new(professor_params)

      if @professor.save
        redirect_to professors_url, notice: "Professor was successfully created." 
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @professor.update(professor_params)
        redirect_to professors_url, notice: "Professor was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @professor.destroy

    redirect_to professors_url, notice: "Professor was successfully destroyed." 
  end

  private
    def set_professor
      @professor = Professor.find(params[:id])
    end

    def professor_params
      params.require(:professor).permit(:first_name, :last_name, :email, :birth_date, :birth_place, :gender, :residence, phone:[])
    end
end
