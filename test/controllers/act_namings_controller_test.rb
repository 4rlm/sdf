require 'test_helper'

class ActNamingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_naming = act_namings(:one)
  end

  test "should get index" do
    get act_namings_url
    assert_response :success
  end

  test "should get new" do
    get new_act_naming_url
    assert_response :success
  end

  test "should create act_naming" do
    assert_difference('ActNaming.count') do
      post act_namings_url, params: { act_naming: {  } }
    end

    assert_redirected_to act_naming_url(ActNaming.last)
  end

  test "should show act_naming" do
    get act_naming_url(@act_naming)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_naming_url(@act_naming)
    assert_response :success
  end

  test "should update act_naming" do
    patch act_naming_url(@act_naming), params: { act_naming: {  } }
    assert_redirected_to act_naming_url(@act_naming)
  end

  test "should destroy act_naming" do
    assert_difference('ActNaming.count', -1) do
      delete act_naming_url(@act_naming)
    end

    assert_redirected_to act_namings_url
  end
end
