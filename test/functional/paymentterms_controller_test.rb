require 'test_helper'

class PaymenttermsControllerTest < ActionController::TestCase
  setup do
    @paymentterm = paymentterms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paymentterms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paymentterm" do
    assert_difference('Paymentterm.count') do
      post :create, paymentterm: { company_id: @paymentterm.company_id, day1: @paymentterm.day1, day2: @paymentterm.day2, day3: @paymentterm.day3, percent1: @paymentterm.percent1, percent2: @paymentterm.percent2, shorttext: @paymentterm.shorttext, term: @paymentterm.term }
    end

    assert_redirected_to paymentterm_path(assigns(:paymentterm))
  end

  test "should show paymentterm" do
    get :show, id: @paymentterm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paymentterm
    assert_response :success
  end

  test "should update paymentterm" do
    put :update, id: @paymentterm, paymentterm: { company_id: @paymentterm.company_id, day1: @paymentterm.day1, day2: @paymentterm.day2, day3: @paymentterm.day3, percent1: @paymentterm.percent1, percent2: @paymentterm.percent2, shorttext: @paymentterm.shorttext, term: @paymentterm.term }
    assert_redirected_to paymentterm_path(assigns(:paymentterm))
  end

  test "should destroy paymentterm" do
    assert_difference('Paymentterm.count', -1) do
      delete :destroy, id: @paymentterm
    end

    assert_redirected_to paymentterms_path
  end
end
