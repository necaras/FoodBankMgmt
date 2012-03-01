require 'test_helper'

class RefagenciesControllerTest < ActionController::TestCase
  setup do
    @refagency = refagencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refagencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refagency" do
    assert_difference('Refagency.count') do
      post :create, refagency: @refagency.attributes
    end

    assert_redirected_to refagency_path(assigns(:refagency))
  end

  test "should show refagency" do
    get :show, id: @refagency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refagency
    assert_response :success
  end

  test "should update refagency" do
    put :update, id: @refagency, refagency: @refagency.attributes
    assert_redirected_to refagency_path(assigns(:refagency))
  end

  test "should destroy refagency" do
    assert_difference('Refagency.count', -1) do
      delete :destroy, id: @refagency
    end

    assert_redirected_to refagencies_path
  end
end
