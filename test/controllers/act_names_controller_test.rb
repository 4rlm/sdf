require 'test_helper'

class ActNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_name = act_names(:one)
  end

  test "should get index" do
    get act_names_url
    assert_response :success
  end

  test "should get new" do
    get new_act_name_url
    assert_response :success
  end

  test "should create act_name" do
    assert_difference('ActName.count') do
      post act_names_url, params: { act_name: { act_name: @act_name.act_name, status: @act_name.status } }
    end

    assert_redirected_to act_name_url(ActName.last)
  end

  test "should show act_name" do
    get act_name_url(@act_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_name_url(@act_name)
    assert_response :success
  end

  test "should update act_name" do
    patch act_name_url(@act_name), params: { act_name: { act_name: @act_name.act_name, status: @act_name.status } }
    assert_redirected_to act_name_url(@act_name)
  end

  test "should destroy act_name" do
    assert_difference('ActName.count', -1) do
      delete act_name_url(@act_name)
    end

    assert_redirected_to act_names_url
  end
end
