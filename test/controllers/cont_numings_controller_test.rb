require 'test_helper'

class ContNumingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cont_numing = cont_numings(:one)
  end

  test "should get index" do
    get cont_numings_url
    assert_response :success
  end

  test "should get new" do
    get new_cont_numing_url
    assert_response :success
  end

  test "should create cont_numing" do
    assert_difference('ContNuming.count') do
      post cont_numings_url, params: { cont_numing: {  } }
    end

    assert_redirected_to cont_numing_url(ContNuming.last)
  end

  test "should show cont_numing" do
    get cont_numing_url(@cont_numing)
    assert_response :success
  end

  test "should get edit" do
    get edit_cont_numing_url(@cont_numing)
    assert_response :success
  end

  test "should update cont_numing" do
    patch cont_numing_url(@cont_numing), params: { cont_numing: {  } }
    assert_redirected_to cont_numing_url(@cont_numing)
  end

  test "should destroy cont_numing" do
    assert_difference('ContNuming.count', -1) do
      delete cont_numing_url(@cont_numing)
    end

    assert_redirected_to cont_numings_url
  end
end
