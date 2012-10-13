require 'test_helper'

class TokenStatusesControllerTest < ActionController::TestCase
  setup do
    @token_status = token_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:token_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create token_status" do
    assert_difference('TokenStatus.count') do
      post :create, token_status: { name: @token_status.name }
    end

    assert_redirected_to token_status_path(assigns(:token_status))
  end

  test "should show token_status" do
    get :show, id: @token_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @token_status
    assert_response :success
  end

  test "should update token_status" do
    put :update, id: @token_status, token_status: { name: @token_status.name }
    assert_redirected_to token_status_path(assigns(:token_status))
  end

  test "should destroy token_status" do
    assert_difference('TokenStatus.count', -1) do
      delete :destroy, id: @token_status
    end

    assert_redirected_to token_statuses_path
  end
end
