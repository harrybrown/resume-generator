require 'test_helper'

class SamplesControllerTest < ActionController::TestCase
  setup do
    @sample = samples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample" do
    assert_difference('Sample.count') do
      post :create, sample: { boxed_logo: @sample.boxed_logo, challenges: @sample.challenges, company_working_for: @sample.company_working_for, mobile_screen_shot: @sample.mobile_screen_shot, my_contribution: @sample.my_contribution, project_description: @sample.project_description, screenshot: @sample.screenshot, site_link: @sample.site_link }
    end

    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should show sample" do
    get :show, id: @sample
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample
    assert_response :success
  end

  test "should update sample" do
    patch :update, id: @sample, sample: { boxed_logo: @sample.boxed_logo, challenges: @sample.challenges, company_working_for: @sample.company_working_for, mobile_screen_shot: @sample.mobile_screen_shot, my_contribution: @sample.my_contribution, project_description: @sample.project_description, screenshot: @sample.screenshot, site_link: @sample.site_link }
    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should destroy sample" do
    assert_difference('Sample.count', -1) do
      delete :destroy, id: @sample
    end

    assert_redirected_to samples_path
  end
end
