require 'test_helper'

class ContNumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cont_num = cont_nums(:one)
  end

  test "should get index" do
    get cont_nums_url
    assert_response :success
  end

  test "should get new" do
    get new_cont_num_url
    assert_response :success
  end

  test "should create cont_num" do
    assert_difference('ContNum.count') do
      post cont_nums_url, params: { cont_num: { cont_num: @cont_num.cont_num, source: @cont_num.source, status: @cont_num.status } }
    end

    assert_redirected_to cont_num_url(ContNum.last)
  end

  test "should show cont_num" do
    get cont_num_url(@cont_num)
    assert_response :success
  end

  test "should get edit" do
    get edit_cont_num_url(@cont_num)
    assert_response :success
  end

  test "should update cont_num" do
    patch cont_num_url(@cont_num), params: { cont_num: { cont_num: @cont_num.cont_num, source: @cont_num.source, status: @cont_num.status } }
    assert_redirected_to cont_num_url(@cont_num)
  end

  test "should destroy cont_num" do
    assert_difference('ContNum.count', -1) do
      delete cont_num_url(@cont_num)
    end

    assert_redirected_to cont_nums_url
  end
end
