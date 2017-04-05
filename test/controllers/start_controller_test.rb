require 'test_helper'

class StartControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

end
