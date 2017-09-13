require 'test_helper'

class ContNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cont_name = cont_names(:one)
  end

  test "should get index" do
    get cont_names_url
    assert_response :success
  end

  test "should get new" do
    get new_cont_name_url
    assert_response :success
  end

  test "should create cont_name" do
    assert_difference('ContName.count') do
      post cont_names_url, params: { cont_name: { first_name: @cont_name.first_name, last_name: @cont_name.last_name, status: @cont_name.status } }
    end

    assert_redirected_to cont_name_url(ContName.last)
  end

  test "should show cont_name" do
    get cont_name_url(@cont_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_cont_name_url(@cont_name)
    assert_response :success
  end

  test "should update cont_name" do
    patch cont_name_url(@cont_name), params: { cont_name: { first_name: @cont_name.first_name, last_name: @cont_name.last_name, status: @cont_name.status } }
    assert_redirected_to cont_name_url(@cont_name)
  end

  test "should destroy cont_name" do
    assert_difference('ContName.count', -1) do
      delete cont_name_url(@cont_name)
    end

    assert_redirected_to cont_names_url
  end
end
