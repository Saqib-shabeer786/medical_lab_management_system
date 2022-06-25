require "test_helper"

class PatentTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patent_test = patent_tests(:one)
  end

  test "should get index" do
    get patent_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_patent_test_url
    assert_response :success
  end

  test "should create patent_test" do
    assert_difference("PatentTest.count") do
      post patent_tests_url, params: { patent_test: { date: @patent_test.date, patient_id: @patent_test.patient_id, rate: @patent_test.rate, test_id: @patent_test.test_id } }
    end

    assert_redirected_to patent_test_url(PatentTest.last)
  end

  test "should show patent_test" do
    get patent_test_url(@patent_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_patent_test_url(@patent_test)
    assert_response :success
  end

  test "should update patent_test" do
    patch patent_test_url(@patent_test), params: { patent_test: { date: @patent_test.date, patient_id: @patent_test.patient_id, rate: @patent_test.rate, test_id: @patent_test.test_id } }
    assert_redirected_to patent_test_url(@patent_test)
  end

  test "should destroy patent_test" do
    assert_difference("PatentTest.count", -1) do
      delete patent_test_url(@patent_test)
    end

    assert_redirected_to patent_tests_url
  end
end
