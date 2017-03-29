require 'test_helper'

class ClassroomStatusesControllerTest < ActionController::TestCase
  setup do
    @classroom_status = classroom_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classroom_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classroom_status" do
    assert_difference('ClassroomStatus.count') do
      post :create, classroom_status: { classroom_status: @classroom_status.classroom_status }
    end

    assert_redirected_to classroom_status_path(assigns(:classroom_status))
  end

  test "should show classroom_status" do
    get :show, id: @classroom_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classroom_status
    assert_response :success
  end

  test "should update classroom_status" do
    patch :update, id: @classroom_status, classroom_status: { classroom_status: @classroom_status.classroom_status }
    assert_redirected_to classroom_status_path(assigns(:classroom_status))
  end

  test "should destroy classroom_status" do
    assert_difference('ClassroomStatus.count', -1) do
      delete :destroy, id: @classroom_status
    end

    assert_redirected_to classroom_statuses_path
  end
end
