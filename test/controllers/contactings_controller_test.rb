require 'test_helper'

class ContactingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacting = contactings(:one)
  end

  test "should get index" do
    get contactings_url
    assert_response :success
  end

  test "should get new" do
    get new_contacting_url
    assert_response :success
  end

  test "should create contacting" do
    assert_difference('Contacting.count') do
      post contactings_url, params: { contacting: {  } }
    end

    assert_redirected_to contacting_url(Contacting.last)
  end

  test "should show contacting" do
    get contacting_url(@contacting)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacting_url(@contacting)
    assert_response :success
  end

  test "should update contacting" do
    patch contacting_url(@contacting), params: { contacting: {  } }
    assert_redirected_to contacting_url(@contacting)
  end

  test "should destroy contacting" do
    assert_difference('Contacting.count', -1) do
      delete contacting_url(@contacting)
    end

    assert_redirected_to contactings_url
  end
end
