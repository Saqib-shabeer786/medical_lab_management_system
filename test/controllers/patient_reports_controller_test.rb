require "test_helper"

class PatientReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_report = patient_reports(:one)
  end

  test "should get index" do
    get patient_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_report_url
    assert_response :success
  end

  test "should create patient_report" do
    assert_difference("PatientReport.count") do
      post patient_reports_url, params: { patient_report: { case_id: @patient_report.case_id, perameter_id: @patient_report.perameter_id, result: @patient_report.result } }
    end

    assert_redirected_to patient_report_url(PatientReport.last)
  end

  test "should show patient_report" do
    get patient_report_url(@patient_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_report_url(@patient_report)
    assert_response :success
  end

  test "should update patient_report" do
    patch patient_report_url(@patient_report), params: { patient_report: { case_id: @patient_report.case_id, perameter_id: @patient_report.perameter_id, result: @patient_report.result } }
    assert_redirected_to patient_report_url(@patient_report)
  end

  test "should destroy patient_report" do
    assert_difference("PatientReport.count", -1) do
      delete patient_report_url(@patient_report)
    end

    assert_redirected_to patient_reports_url
  end
end
