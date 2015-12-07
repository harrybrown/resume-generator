require 'test_helper'

class JobDutiesControllerTest < ActionController::TestCase
  setup do
    @job_duty = job_duties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_duties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_duty" do
    assert_difference('JobDuty.count') do
      post :create, job_duty: {  }
    end

    assert_redirected_to job_duty_path(assigns(:job_duty))
  end

  test "should show job_duty" do
    get :show, id: @job_duty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_duty
    assert_response :success
  end

  test "should update job_duty" do
    patch :update, id: @job_duty, job_duty: {  }
    assert_redirected_to job_duty_path(assigns(:job_duty))
  end

  test "should destroy job_duty" do
    assert_difference('JobDuty.count', -1) do
      delete :destroy, id: @job_duty
    end

    assert_redirected_to job_duties_path
  end
end
