require 'test_helper'

class DoneesControllerTest < ActionController::TestCase
  setup do
    @donee = donees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donee" do
    assert_difference('Donee.count') do
      post :create, donee: @donee.attributes
    end

    assert_redirected_to donee_path(assigns(:donee))
  end

  test "should show donee" do
    get :show, id: @donee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donee
    assert_response :success
  end

  test "should update donee" do
    put :update, id: @donee, donee: @donee.attributes
    assert_redirected_to donee_path(assigns(:donee))
  end

  test "should destroy donee" do
    assert_difference('Donee.count', -1) do
      delete :destroy, id: @donee
    end

    assert_redirected_to donees_path
  end
end
