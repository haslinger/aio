require 'test_helper'

class OutgoingArrowsControllerTest < ActionController::TestCase
  setup do
    @outgoing_arrow = outgoing_arrows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outgoing_arrows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outgoing_arrow" do
    assert_difference('OutgoingArrow.count') do
      post :create, outgoing_arrow: { step_id: @outgoing_arrow.step_id, sucessor_id: @outgoing_arrow.sucessor_id }
    end

    assert_redirected_to outgoing_arrow_path(assigns(:outgoing_arrow))
  end

  test "should show outgoing_arrow" do
    get :show, id: @outgoing_arrow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outgoing_arrow
    assert_response :success
  end

  test "should update outgoing_arrow" do
    put :update, id: @outgoing_arrow, outgoing_arrow: { step_id: @outgoing_arrow.step_id, sucessor_id: @outgoing_arrow.sucessor_id }
    assert_redirected_to outgoing_arrow_path(assigns(:outgoing_arrow))
  end

  test "should destroy outgoing_arrow" do
    assert_difference('OutgoingArrow.count', -1) do
      delete :destroy, id: @outgoing_arrow
    end

    assert_redirected_to outgoing_arrows_path
  end
end
