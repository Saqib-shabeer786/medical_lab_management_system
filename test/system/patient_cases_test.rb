require "application_system_test_case"

class PatientCasesTest < ApplicationSystemTestCase
  setup do
    @patient_case = patient_cases(:one)
  end

  test "visiting the index" do
    visit patient_cases_url
    assert_selector "h1", text: "Patient cases"
  end

  test "should create patient case" do
    visit patient_cases_url
    click_on "New patient case"

    fill_in "Collection date", with: @patient_case.collection_date
    fill_in "Doctor", with: @patient_case.doctor_id
    fill_in "Due", with: @patient_case.due
    fill_in "Paid", with: @patient_case.paid
    fill_in "Patient", with: @patient_case.patient_id
    fill_in "Reporting date", with: @patient_case.reporting_date
    fill_in "Total amount", with: @patient_case.total_amount
    click_on "Create Patient case"

    assert_text "Patient case was successfully created"
    click_on "Back"
  end

  test "should update Patient case" do
    visit patient_case_url(@patient_case)
    click_on "Edit this patient case", match: :first

    fill_in "Collection date", with: @patient_case.collection_date
    fill_in "Doctor", with: @patient_case.doctor_id
    fill_in "Due", with: @patient_case.due
    fill_in "Paid", with: @patient_case.paid
    fill_in "Patient", with: @patient_case.patient_id
    fill_in "Reporting date", with: @patient_case.reporting_date
    fill_in "Total amount", with: @patient_case.total_amount
    click_on "Update Patient case"

    assert_text "Patient case was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient case" do
    visit patient_case_url(@patient_case)
    click_on "Destroy this patient case", match: :first

    assert_text "Patient case was successfully destroyed"
  end
end
