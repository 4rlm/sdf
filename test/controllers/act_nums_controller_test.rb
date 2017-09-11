require 'test_helper'

class ActNumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_num = act_nums(:one)
  end

  test "should get index" do
    get act_nums_url
    assert_response :success
  end

  test "should get new" do
    get new_act_num_url
    assert_response :success
  end

  test "should create act_num" do
    assert_difference('ActNum.count') do
      post act_nums_url, params: { act_num: { act_num: @act_num.act_num, source: @act_num.source, status: @act_num.status } }
    end

    assert_redirected_to act_num_url(ActNum.last)
  end

  test "should show act_num" do
    get act_num_url(@act_num)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_num_url(@act_num)
    assert_response :success
  end

  test "should update act_num" do
    patch act_num_url(@act_num), params: { act_num: { act_num: @act_num.act_num, source: @act_num.source, status: @act_num.status } }
    assert_redirected_to act_num_url(@act_num)
  end

  test "should destroy act_num" do
    assert_difference('ActNum.count', -1) do
      delete act_num_url(@act_num)
    end

    assert_redirected_to act_nums_url
  end
end
