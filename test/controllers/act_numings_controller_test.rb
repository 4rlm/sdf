require 'test_helper'

class ActNumingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_numing = act_numings(:one)
  end

  test "should get index" do
    get act_numings_url
    assert_response :success
  end

  test "should get new" do
    get new_act_numing_url
    assert_response :success
  end

  test "should create act_numing" do
    assert_difference('ActNuming.count') do
      post act_numings_url, params: { act_numing: {  } }
    end

    assert_redirected_to act_numing_url(ActNuming.last)
  end

  test "should show act_numing" do
    get act_numing_url(@act_numing)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_numing_url(@act_numing)
    assert_response :success
  end

  test "should update act_numing" do
    patch act_numing_url(@act_numing), params: { act_numing: {  } }
    assert_redirected_to act_numing_url(@act_numing)
  end

  test "should destroy act_numing" do
    assert_difference('ActNuming.count', -1) do
      delete act_numing_url(@act_numing)
    end

    assert_redirected_to act_numings_url
  end
end
