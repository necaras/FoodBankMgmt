require 'test_helper'

class CtypesControllerTest < ActionController::TestCase
  setup do
    @ctype = ctypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ctypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ctype" do
    assert_difference('Ctype.count') do
      post :create, ctype: @ctype.attributes
    end

    assert_redirected_to ctype_path(assigns(:ctype))
  end

  test "should show ctype" do
    get :show, id: @ctype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ctype
    assert_response :success
  end

  test "should update ctype" do
    put :update, id: @ctype, ctype: @ctype.attributes
    assert_redirected_to ctype_path(assigns(:ctype))
  end

  test "should destroy ctype" do
    assert_difference('Ctype.count', -1) do
      delete :destroy, id: @ctype
    end

    assert_redirected_to ctypes_path
  end
end
