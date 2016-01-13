require 'test_helper'

class FullResumesControllerTest < ActionController::TestCase
  setup do
    @full_resume = full_resumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:full_resumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create full_resume" do
    assert_difference('FullResume.count') do
      post :create, full_resume: {  }
    end

    assert_redirected_to full_resume_path(assigns(:full_resume))
  end

  test "should show full_resume" do
    get :show, id: @full_resume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @full_resume
    assert_response :success
  end

  test "should update full_resume" do
    patch :update, id: @full_resume, full_resume: {  }
    assert_redirected_to full_resume_path(assigns(:full_resume))
  end

  test "should destroy full_resume" do
    assert_difference('FullResume.count', -1) do
      delete :destroy, id: @full_resume
    end

    assert_redirected_to full_resumes_path
  end
end
