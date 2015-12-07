require 'test_helper'

class MiscellaneousAbilitiesControllerTest < ActionController::TestCase
  setup do
    @miscellaneous_ability = miscellaneous_abilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscellaneous_abilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miscellaneous_ability" do
    assert_difference('MiscellaneousAbility.count') do
      post :create, miscellaneous_ability: {  }
    end

    assert_redirected_to miscellaneous_ability_path(assigns(:miscellaneous_ability))
  end

  test "should show miscellaneous_ability" do
    get :show, id: @miscellaneous_ability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miscellaneous_ability
    assert_response :success
  end

  test "should update miscellaneous_ability" do
    patch :update, id: @miscellaneous_ability, miscellaneous_ability: {  }
    assert_redirected_to miscellaneous_ability_path(assigns(:miscellaneous_ability))
  end

  test "should destroy miscellaneous_ability" do
    assert_difference('MiscellaneousAbility.count', -1) do
      delete :destroy, id: @miscellaneous_ability
    end

    assert_redirected_to miscellaneous_abilities_path
  end
end
