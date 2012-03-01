require 'test_helper'

class IndonationsControllerTest < ActionController::TestCase
  setup do
    @indonation = indonations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indonations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indonation" do
    assert_difference('Indonation.count') do
      post :create, indonation: @indonation.attributes
    end

    assert_redirected_to indonation_path(assigns(:indonation))
  end

  test "should show indonation" do
    get :show, id: @indonation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indonation
    assert_response :success
  end

  test "should update indonation" do
    put :update, id: @indonation, indonation: @indonation.attributes
    assert_redirected_to indonation_path(assigns(:indonation))
  end

  test "should destroy indonation" do
    assert_difference('Indonation.count', -1) do
      delete :destroy, id: @indonation
    end

    assert_redirected_to indonations_path
  end
end
