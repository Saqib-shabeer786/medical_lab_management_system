require "application_system_test_case"

class TestPerametersTest < ApplicationSystemTestCase
  setup do
    @test_perameter = test_perameters(:one)
  end

  test "visiting the index" do
    visit test_perameters_url
    assert_selector "h1", text: "Test perameters"
  end

  test "should create test perameter" do
    visit test_perameters_url
    click_on "New test perameter"

    fill_in "Name", with: @test_perameter.name
    fill_in "Range", with: @test_perameter.range
    fill_in "Unit", with: @test_perameter.unit
    click_on "Create Test perameter"

    assert_text "Test perameter was successfully created"
    click_on "Back"
  end

  test "should update Test perameter" do
    visit test_perameter_url(@test_perameter)
    click_on "Edit this test perameter", match: :first

    fill_in "Name", with: @test_perameter.name
    fill_in "Range", with: @test_perameter.range
    fill_in "Unit", with: @test_perameter.unit
    click_on "Update Test perameter"

    assert_text "Test perameter was successfully updated"
    click_on "Back"
  end

  test "should destroy Test perameter" do
    visit test_perameter_url(@test_perameter)
    click_on "Destroy this test perameter", match: :first

    assert_text "Test perameter was successfully destroyed"
  end
end
