require 'test_helper'

class ProgramRostersControllerTest < ActionController::TestCase
  setup do
    @program_roster = program_rosters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_rosters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_roster" do
    assert_difference('ProgramRoster.count') do
      post :create, program_roster: { customer_id: @program_roster.customer_id, program_schedule_id: @program_roster.program_schedule_id }
    end

    assert_redirected_to program_roster_path(assigns(:program_roster))
  end

  test "should show program_roster" do
    get :show, id: @program_roster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_roster
    assert_response :success
  end

  test "should update program_roster" do
    patch :update, id: @program_roster, program_roster: { customer_id: @program_roster.customer_id, program_schedule_id: @program_roster.program_schedule_id }
    assert_redirected_to program_roster_path(assigns(:program_roster))
  end

  test "should destroy program_roster" do
    assert_difference('ProgramRoster.count', -1) do
      delete :destroy, id: @program_roster
    end

    assert_redirected_to program_rosters_path
  end
end
