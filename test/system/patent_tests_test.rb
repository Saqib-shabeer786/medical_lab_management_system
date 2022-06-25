require "application_system_test_case"

class PatentTestsTest < ApplicationSystemTestCase
  setup do
    @patent_test = patent_tests(:one)
  end

  test "visiting the index" do
    visit patent_tests_url
    assert_selector "h1", text: "Patent tests"
  end

  test "should create patent test" do
    visit patent_tests_url
    click_on "New patent test"

    fill_in "Date", with: @patent_test.date
    fill_in "Patient", with: @patent_test.patient_id
    fill_in "Rate", with: @patent_test.rate
    fill_in "Test", with: @patent_test.test_id
    click_on "Create Patent test"

    assert_text "Patent test was successfully created"
    click_on "Back"
  end

  test "should update Patent test" do
    visit patent_test_url(@patent_test)
    click_on "Edit this patent test", match: :first

    fill_in "Date", with: @patent_test.date
    fill_in "Patient", with: @patent_test.patient_id
    fill_in "Rate", with: @patent_test.rate
    fill_in "Test", with: @patent_test.test_id
    click_on "Update Patent test"

    assert_text "Patent test was successfully updated"
    click_on "Back"
  end

  test "should destroy Patent test" do
    visit patent_test_url(@patent_test)
    click_on "Destroy this patent test", match: :first

    assert_text "Patent test was successfully destroyed"
  end
end
