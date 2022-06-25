class PatientCasesController < ApplicationController
  before_action :set_patient_case, only: %i[ show edit update destroy ]

  # GET /patient_cases or /patient_cases.json
  def index
    @patient_cases = PatientCase.all
  end

  # GET /patient_cases/1 or /patient_cases/1.json
  def show
  end

  # GET /patient_cases/new
  def new
    @patient_case = PatientCase.new
  end

  # GET /patient_cases/1/edit
  def edit
  end

  # POST /patient_cases or /patient_cases.json
  def create
    @patient_case = PatientCase.new(patient_case_params)

    respond_to do |format|
      if @patient_case.save
        format.html { redirect_to patient_case_url(@patient_case), notice: "Patient case was successfully created." }
        format.json { render :show, status: :created, location: @patient_case }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_cases/1 or /patient_cases/1.json
  def update
    respond_to do |format|
      if @patient_case.update(patient_case_params)
        format.html { redirect_to patient_case_url(@patient_case), notice: "Patient case was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_case }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_cases/1 or /patient_cases/1.json
  def destroy
    @patient_case.destroy

    respond_to do |format|
      format.html { redirect_to patient_cases_url, notice: "Patient case was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_case
      @patient_case = PatientCase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_case_params
      params.require(:patient_case).permit(:patient_id, :doctor_id, :collection_date, :reporting_date, :total_amount, :paid, :due)
    end
end
