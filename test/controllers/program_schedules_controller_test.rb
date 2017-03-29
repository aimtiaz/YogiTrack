require 'test_helper'

class ProgramSchedulesControllerTest < ActionController::TestCase
  setup do
    @program_schedule = program_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_schedule" do
    assert_difference('ProgramSchedule.count') do
      post :create, program_schedule: { class_size: @program_schedule.class_size, classroom_id: @program_schedule.classroom_id, date: @program_schedule.date, end_time: @program_schedule.end_time, instructor_id: @program_schedule.instructor_id, program_id: @program_schedule.program_id, start_time: @program_schedule.start_time }
    end

    assert_redirected_to program_schedule_path(assigns(:program_schedule))
  end

  test "should show program_schedule" do
    get :show, id: @program_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_schedule
    assert_response :success
  end

  test "should update program_schedule" do
    patch :update, id: @program_schedule, program_schedule: { class_size: @program_schedule.class_size, classroom_id: @program_schedule.classroom_id, date: @program_schedule.date, end_time: @program_schedule.end_time, instructor_id: @program_schedule.instructor_id, program_id: @program_schedule.program_id, start_time: @program_schedule.start_time }
    assert_redirected_to program_schedule_path(assigns(:program_schedule))
  end

  test "should destroy program_schedule" do
    assert_difference('ProgramSchedule.count', -1) do
      delete :destroy, id: @program_schedule
    end

    assert_redirected_to program_schedules_path
  end
end
