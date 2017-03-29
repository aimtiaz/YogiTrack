require 'test_helper'

class EquipmentStatusesControllerTest < ActionController::TestCase
  setup do
    @equipment_status = equipment_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_status" do
    assert_difference('EquipmentStatus.count') do
      post :create, equipment_status: { equipment_status: @equipment_status.equipment_status }
    end

    assert_redirected_to equipment_status_path(assigns(:equipment_status))
  end

  test "should show equipment_status" do
    get :show, id: @equipment_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_status
    assert_response :success
  end

  test "should update equipment_status" do
    patch :update, id: @equipment_status, equipment_status: { equipment_status: @equipment_status.equipment_status }
    assert_redirected_to equipment_status_path(assigns(:equipment_status))
  end

  test "should destroy equipment_status" do
    assert_difference('EquipmentStatus.count', -1) do
      delete :destroy, id: @equipment_status
    end

    assert_redirected_to equipment_statuses_path
  end
end
