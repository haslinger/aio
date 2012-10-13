require 'test_helper'

class InvoiceHeadersControllerTest < ActionController::TestCase
  setup do
    @invoice_header = invoice_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoice_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice_header" do
    assert_difference('InvoiceHeader.count') do
      post :create, invoice_header: { company_id: @invoice_header.company_id, consignee: @invoice_header.consignee, created_by: @invoice_header.created_by, currency_id: @invoice_header.currency_id, customer_id: @invoice_header.customer_id, dicount: @invoice_header.dicount, discountvalue_header: @invoice_header.discountvalue_header, discountvalue_position: @invoice_header.discountvalue_position, reference_number: @invoice_header.reference_number, taxvalue_full: @invoice_header.taxvalue_full, taxvalue_half: @invoice_header.taxvalue_half, value_netto: @invoice_header.value_netto, value_netto_half: @invoice_header.value_netto_half, value_payed: @invoice_header.value_payed, valuevalue_netto_full: @invoice_header.valuevalue_netto_full }
    end

    assert_redirected_to invoice_header_path(assigns(:invoice_header))
  end

  test "should show invoice_header" do
    get :show, id: @invoice_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice_header
    assert_response :success
  end

  test "should update invoice_header" do
    put :update, id: @invoice_header, invoice_header: { company_id: @invoice_header.company_id, consignee: @invoice_header.consignee, created_by: @invoice_header.created_by, currency_id: @invoice_header.currency_id, customer_id: @invoice_header.customer_id, dicount: @invoice_header.dicount, discountvalue_header: @invoice_header.discountvalue_header, discountvalue_position: @invoice_header.discountvalue_position, reference_number: @invoice_header.reference_number, taxvalue_full: @invoice_header.taxvalue_full, taxvalue_half: @invoice_header.taxvalue_half, value_netto: @invoice_header.value_netto, value_netto_half: @invoice_header.value_netto_half, value_payed: @invoice_header.value_payed, valuevalue_netto_full: @invoice_header.valuevalue_netto_full }
    assert_redirected_to invoice_header_path(assigns(:invoice_header))
  end

  test "should destroy invoice_header" do
    assert_difference('InvoiceHeader.count', -1) do
      delete :destroy, id: @invoice_header
    end

    assert_redirected_to invoice_headers_path
  end
end
