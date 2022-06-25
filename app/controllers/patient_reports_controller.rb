class PatientReportsController < ApplicationController
  before_action :set_patient_report, only: %i[ show edit update destroy ]

  # GET /patient_reports or /patient_reports.json
  def index
    @patient_reports = PatientReport.all
  end

  # GET /patient_reports/1 or /patient_reports/1.json
  def show
  end

  # GET /patient_reports/new
  def new
    @patient_report = PatientReport.new
  end

  # GET /patient_reports/1/edit
  def edit
  end

  # POST /patient_reports or /patient_reports.json
  def create
    @patient_report = PatientReport.new(patient_report_params)

    respond_to do |format|
      if @patient_report.save
        format.html { redirect_to patient_report_url(@patient_report), notice: "Patient report was successfully created." }
        format.json { render :show, status: :created, location: @patient_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_reports/1 or /patient_reports/1.json
  def update
    respond_to do |format|
      if @patient_report.update(patient_report_params)
        format.html { redirect_to patient_report_url(@patient_report), notice: "Patient report was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_reports/1 or /patient_reports/1.json
  def destroy
    @patient_report.destroy

    respond_to do |format|
      format.html { redirect_to patient_reports_url, notice: "Patient report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_report
      @patient_report = PatientReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_report_params
      params.require(:patient_report).permit(:case_id, :perameter_id, :result)
    end
end
