require 'test_helper'

class OutdonationsControllerTest < ActionController::TestCase
  setup do
    @outdonation = outdonations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outdonations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outdonation" do
    assert_difference('Outdonation.count') do
      post :create, outdonation: @outdonation.attributes
    end

    assert_redirected_to outdonation_path(assigns(:outdonation))
  end

  test "should show outdonation" do
    get :show, id: @outdonation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outdonation
    assert_response :success
  end

  test "should update outdonation" do
    put :update, id: @outdonation, outdonation: @outdonation.attributes
    assert_redirected_to outdonation_path(assigns(:outdonation))
  end

  test "should destroy outdonation" do
    assert_difference('Outdonation.count', -1) do
      delete :destroy, id: @outdonation
    end

    assert_redirected_to outdonations_path
  end
end
