require 'test_helper'

class WorkDutiesControllerTest < ActionController::TestCase
  setup do
    @work_duty = work_duties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_duties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_duty" do
    assert_difference('WorkDuty.count') do
      post :create, work_duty: { description: @work_duty.description, task: @work_duty.task, work_id: @work_duty.work_id }
    end

    assert_redirected_to work_duty_path(assigns(:work_duty))
  end

  test "should show work_duty" do
    get :show, id: @work_duty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_duty
    assert_response :success
  end

  test "should update work_duty" do
    patch :update, id: @work_duty, work_duty: { description: @work_duty.description, task: @work_duty.task, work_id: @work_duty.work_id }
    assert_redirected_to work_duty_path(assigns(:work_duty))
  end

  test "should destroy work_duty" do
    assert_difference('WorkDuty.count', -1) do
      delete :destroy, id: @work_duty
    end

    assert_redirected_to work_duties_path
  end
end
