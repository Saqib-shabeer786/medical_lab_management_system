require "test_helper"

class PatientCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_case = patient_cases(:one)
  end

  test "should get index" do
    get patient_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_case_url
    assert_response :success
  end

  test "should create patient_case" do
    assert_difference("PatientCase.count") do
      post patient_cases_url, params: { patient_case: { collection_date: @patient_case.collection_date, doctor_id: @patient_case.doctor_id, due: @patient_case.due, paid: @patient_case.paid, patient_id: @patient_case.patient_id, reporting_date: @patient_case.reporting_date, total_amount: @patient_case.total_amount } }
    end

    assert_redirected_to patient_case_url(PatientCase.last)
  end

  test "should show patient_case" do
    get patient_case_url(@patient_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_case_url(@patient_case)
    assert_response :success
  end

  test "should update patient_case" do
    patch patient_case_url(@patient_case), params: { patient_case: { collection_date: @patient_case.collection_date, doctor_id: @patient_case.doctor_id, due: @patient_case.due, paid: @patient_case.paid, patient_id: @patient_case.patient_id, reporting_date: @patient_case.reporting_date, total_amount: @patient_case.total_amount } }
    assert_redirected_to patient_case_url(@patient_case)
  end

  test "should destroy patient_case" do
    assert_difference("PatientCase.count", -1) do
      delete patient_case_url(@patient_case)
    end

    assert_redirected_to patient_cases_url
  end
end
