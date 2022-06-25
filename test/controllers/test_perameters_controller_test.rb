require "test_helper"

class TestPerametersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_perameter = test_perameters(:one)
  end

  test "should get index" do
    get test_perameters_url
    assert_response :success
  end

  test "should get new" do
    get new_test_perameter_url
    assert_response :success
  end

  test "should create test_perameter" do
    assert_difference("TestPerameter.count") do
      post test_perameters_url, params: { test_perameter: { name: @test_perameter.name, range: @test_perameter.range, unit: @test_perameter.unit } }
    end

    assert_redirected_to test_perameter_url(TestPerameter.last)
  end

  test "should show test_perameter" do
    get test_perameter_url(@test_perameter)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_perameter_url(@test_perameter)
    assert_response :success
  end

  test "should update test_perameter" do
    patch test_perameter_url(@test_perameter), params: { test_perameter: { name: @test_perameter.name, range: @test_perameter.range, unit: @test_perameter.unit } }
    assert_redirected_to test_perameter_url(@test_perameter)
  end

  test "should destroy test_perameter" do
    assert_difference("TestPerameter.count", -1) do
      delete test_perameter_url(@test_perameter)
    end

    assert_redirected_to test_perameters_url
  end
end
