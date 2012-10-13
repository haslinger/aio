require 'test_helper'

class StepActionsControllerTest < ActionController::TestCase
  setup do
    @step_action = step_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step_action" do
    assert_difference('StepAction.count') do
      post :create, step_action: { model_id: @step_action.model_id, name: @step_action.name }
    end

    assert_redirected_to step_action_path(assigns(:step_action))
  end

  test "should show step_action" do
    get :show, id: @step_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step_action
    assert_response :success
  end

  test "should update step_action" do
    put :update, id: @step_action, step_action: { model_id: @step_action.model_id, name: @step_action.name }
    assert_redirected_to step_action_path(assigns(:step_action))
  end

  test "should destroy step_action" do
    assert_difference('StepAction.count', -1) do
      delete :destroy, id: @step_action
    end

    assert_redirected_to step_actions_path
  end
end
