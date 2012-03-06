require 'test_helper'

class FoodhampersControllerTest < ActionController::TestCase
  setup do
    @foodhamper = foodhampers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodhampers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodhamper" do
    assert_difference('Foodhamper.count') do
      post :create, foodhamper: @foodhamper.attributes
    end

    assert_redirected_to foodhamper_path(assigns(:foodhamper))
  end

  test "should show foodhamper" do
    get :show, id: @foodhamper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foodhamper
    assert_response :success
  end

  test "should update foodhamper" do
    put :update, id: @foodhamper, foodhamper: @foodhamper.attributes
    assert_redirected_to foodhamper_path(assigns(:foodhamper))
  end

  test "should destroy foodhamper" do
    assert_difference('Foodhamper.count', -1) do
      delete :destroy, id: @foodhamper
    end

    assert_redirected_to foodhampers_path
  end
end
