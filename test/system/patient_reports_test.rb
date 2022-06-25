require "application_system_test_case"

class PatientReportsTest < ApplicationSystemTestCase
  setup do
    @patient_report = patient_reports(:one)
  end

  test "visiting the index" do
    visit patient_reports_url
    assert_selector "h1", text: "Patient reports"
  end

  test "should create patient report" do
    visit patient_reports_url
    click_on "New patient report"

    fill_in "Case", with: @patient_report.case_id
    fill_in "Perameter", with: @patient_report.perameter_id
    fill_in "Result", with: @patient_report.result
    click_on "Create Patient report"

    assert_text "Patient report was successfully created"
    click_on "Back"
  end

  test "should update Patient report" do
    visit patient_report_url(@patient_report)
    click_on "Edit this patient report", match: :first

    fill_in "Case", with: @patient_report.case_id
    fill_in "Perameter", with: @patient_report.perameter_id
    fill_in "Result", with: @patient_report.result
    click_on "Update Patient report"

    assert_text "Patient report was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient report" do
    visit patient_report_url(@patient_report)
    click_on "Destroy this patient report", match: :first

    assert_text "Patient report was successfully destroyed"
  end
end
