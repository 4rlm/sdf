require 'test_helper'

class ContNamingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cont_naming = cont_namings(:one)
  end

  test "should get index" do
    get cont_namings_url
    assert_response :success
  end

  test "should get new" do
    get new_cont_naming_url
    assert_response :success
  end

  test "should create cont_naming" do
    assert_difference('ContNaming.count') do
      post cont_namings_url, params: { cont_naming: {  } }
    end

    assert_redirected_to cont_naming_url(ContNaming.last)
  end

  test "should show cont_naming" do
    get cont_naming_url(@cont_naming)
    assert_response :success
  end

  test "should get edit" do
    get edit_cont_naming_url(@cont_naming)
    assert_response :success
  end

  test "should update cont_naming" do
    patch cont_naming_url(@cont_naming), params: { cont_naming: {  } }
    assert_redirected_to cont_naming_url(@cont_naming)
  end

  test "should destroy cont_naming" do
    assert_difference('ContNaming.count', -1) do
      delete cont_naming_url(@cont_naming)
    end

    assert_redirected_to cont_namings_url
  end
end
