class CoefficientsController < ApplicationController
  before_action :set_coefficient, only: %i[ show edit update destroy ]

  # GET /coefficients or /coefficients.json
  def index
    @coefficients = Coefficient.all
  end

  # GET /coefficients/1 or /coefficients/1.json
  def show
  end

  # GET /coefficients/new
  def new
    @coefficient = Coefficient.new
  end

  # GET /coefficients/1/edit
  def edit
  end

  # POST /coefficients or /coefficients.json
  def create
    @coefficient = Coefficient.new(coefficient_params)

    respond_to do |format|
      if @coefficient.save
        format.html { redirect_to coefficient_url(@coefficient), notice: "Coefficient was successfully created." }
        format.json { render :show, status: :created, location: @coefficient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coefficient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coefficients/1 or /coefficients/1.json
  def update
    respond_to do |format|
      if @coefficient.update(coefficient_params)
        format.html { redirect_to coefficient_url(@coefficient), notice: "Coefficient was successfully updated." }
        format.json { render :show, status: :ok, location: @coefficient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coefficient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coefficients/1 or /coefficients/1.json
  def destroy
    @coefficient.destroy

    respond_to do |format|
      format.html { redirect_to coefficients_url, notice: "Coefficient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coefficient
      @coefficient = Coefficient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coefficient_params
      params.require(:coefficient).permit(:field_id, :branch_id, :value)
    end
end
