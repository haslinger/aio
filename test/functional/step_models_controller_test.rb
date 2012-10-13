require 'test_helper'

class StepModelsControllerTest < ActionController::TestCase
  setup do
    @step_model = step_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step_model" do
    assert_difference('StepModel.count') do
      post :create, step_model: { name: @step_model.name }
    end

    assert_redirected_to step_model_path(assigns(:step_model))
  end

  test "should show step_model" do
    get :show, id: @step_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step_model
    assert_response :success
  end

  test "should update step_model" do
    put :update, id: @step_model, step_model: { name: @step_model.name }
    assert_redirected_to step_model_path(assigns(:step_model))
  end

  test "should destroy step_model" do
    assert_difference('StepModel.count', -1) do
      delete :destroy, id: @step_model
    end

    assert_redirected_to step_models_path
  end
end
