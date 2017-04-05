require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get schedule" do
    get :schedule
    assert_response :success
  end

  test "should get pricing" do
    get :pricing
    assert_response :success
  end

  test "should get private" do
    get :private
    assert_response :success
  end

  test "should get event" do
    get :event
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
