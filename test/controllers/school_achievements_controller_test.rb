require 'test_helper'

class SchoolAchievementsControllerTest < ActionController::TestCase
  setup do
    @school_achievement = school_achievements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_achievements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_achievement" do
    assert_difference('SchoolAchievement.count') do
      post :create, school_achievement: { achievement: @school_achievement.achievement, description: @school_achievement.description, school_id: @school_achievement.school_id }
    end

    assert_redirected_to school_achievement_path(assigns(:school_achievement))
  end

  test "should show school_achievement" do
    get :show, id: @school_achievement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_achievement
    assert_response :success
  end

  test "should update school_achievement" do
    patch :update, id: @school_achievement, school_achievement: { achievement: @school_achievement.achievement, description: @school_achievement.description, school_id: @school_achievement.school_id }
    assert_redirected_to school_achievement_path(assigns(:school_achievement))
  end

  test "should destroy school_achievement" do
    assert_difference('SchoolAchievement.count', -1) do
      delete :destroy, id: @school_achievement
    end

    assert_redirected_to school_achievements_path
  end
end
