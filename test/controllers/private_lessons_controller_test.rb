require 'test_helper'

class PrivateLessonsControllerTest < ActionController::TestCase
  setup do
    @private_lesson = private_lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_lesson" do
    assert_difference('PrivateLesson.count') do
      post :create, private_lesson: { classroom_id: @private_lesson.classroom_id, comments: @private_lesson.comments, cost: @private_lesson.cost, customer_id: @private_lesson.customer_id, date: @private_lesson.date, instructor_id: @private_lesson.instructor_id, time: @private_lesson.time }
    end

    assert_redirected_to private_lesson_path(assigns(:private_lesson))
  end

  test "should show private_lesson" do
    get :show, id: @private_lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @private_lesson
    assert_response :success
  end

  test "should update private_lesson" do
    patch :update, id: @private_lesson, private_lesson: { classroom_id: @private_lesson.classroom_id, comments: @private_lesson.comments, cost: @private_lesson.cost, customer_id: @private_lesson.customer_id, date: @private_lesson.date, instructor_id: @private_lesson.instructor_id, time: @private_lesson.time }
    assert_redirected_to private_lesson_path(assigns(:private_lesson))
  end

  test "should destroy private_lesson" do
    assert_difference('PrivateLesson.count', -1) do
      delete :destroy, id: @private_lesson
    end

    assert_redirected_to private_lessons_path
  end
end
