require 'test_helper'

class InvoicePositionsControllerTest < ActionController::TestCase
  setup do
    @invoice_position = invoice_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoice_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice_position" do
    assert_difference('InvoicePosition.count') do
      post :create, invoice_position: { base_price: @invoice_position.base_price, created_by: @invoice_position.created_by, description: @invoice_position.description, discount: @invoice_position.discount, price: @invoice_position.price, product_id: @invoice_position.product_id, quantity: @invoice_position.quantity, textposition: @invoice_position.textposition, unit_id: @invoice_position.unit_id, value: @invoice_position.value, vatrate: @invoice_position.vatrate }
    end

    assert_redirected_to invoice_position_path(assigns(:invoice_position))
  end

  test "should show invoice_position" do
    get :show, id: @invoice_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice_position
    assert_response :success
  end

  test "should update invoice_position" do
    put :update, id: @invoice_position, invoice_position: { base_price: @invoice_position.base_price, created_by: @invoice_position.created_by, description: @invoice_position.description, discount: @invoice_position.discount, price: @invoice_position.price, product_id: @invoice_position.product_id, quantity: @invoice_position.quantity, textposition: @invoice_position.textposition, unit_id: @invoice_position.unit_id, value: @invoice_position.value, vatrate: @invoice_position.vatrate }
    assert_redirected_to invoice_position_path(assigns(:invoice_position))
  end

  test "should destroy invoice_position" do
    assert_difference('InvoicePosition.count', -1) do
      delete :destroy, id: @invoice_position
    end

    assert_redirected_to invoice_positions_path
  end
end
