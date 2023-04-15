class BranchesController < ApplicationController
  before_action :set_branch, only: %i[ show edit update destroy ]

  def index
    @branches = Branch.all
  end

  def show
  end

  def new
    @branch = Branch.new
  end

  def edit
  end

  def create
    @branch = Branch.new(branch_params)

      if @branch.save
        redirect_to branches_url, notice: "Branch was successfully created." 
      else
        render :new, status: :unprocessable_entity 
    end
  end

  def update
      if @branch.update(branch_params)
        redirect_to branches_url, notice: "Branch was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @branch.destroy

    redirect_to branches_url, notice: "Branch was successfully destroyed." 
  end

  private
    def set_branch
      @branch = Branch.find(params[:id])
    end

    def branch_params
      params.require(:branch).permit(:name, :amount)
    end
end
