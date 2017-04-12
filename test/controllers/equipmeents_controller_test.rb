require 'test_helper'

class EquipmeentsControllerTest < ActionController::TestCase
  setup do
    @equipmeent = equipmeents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipmeents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipmeent" do
    assert_difference('Equipmeent.count') do
      post :create, equipmeent: { eq_desc: @equipmeent.eq_desc, equipment_status_id: @equipmeent.equipment_status_id, rental_price: @equipmeent.rental_price }
    end

    assert_redirected_to equipmeent_path(assigns(:equipmeent))
  end

  test "should show equipmeent" do
    get :show, id: @equipmeent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipmeent
    assert_response :success
  end

  test "should update equipmeent" do
    patch :update, id: @equipmeent, equipmeent: { eq_desc: @equipmeent.eq_desc, equipment_status_id: @equipmeent.equipment_status_id, rental_price: @equipmeent.rental_price }
    assert_redirected_to equipmeent_path(assigns(:equipmeent))
  end

  test "should destroy equipmeent" do
    assert_difference('Equipmeent.count', -1) do
      delete :destroy, id: @equipmeent
    end

    assert_redirected_to equipmeents_path
  end
end
