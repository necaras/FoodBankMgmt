require 'test_helper'

class VtypesControllerTest < ActionController::TestCase
  setup do
    @vtype = vtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vtype" do
    assert_difference('Vtype.count') do
      post :create, vtype: @vtype.attributes
    end

    assert_redirected_to vtype_path(assigns(:vtype))
  end

  test "should show vtype" do
    get :show, id: @vtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vtype
    assert_response :success
  end

  test "should update vtype" do
    put :update, id: @vtype, vtype: @vtype.attributes
    assert_redirected_to vtype_path(assigns(:vtype))
  end

  test "should destroy vtype" do
    assert_difference('Vtype.count', -1) do
      delete :destroy, id: @vtype
    end

    assert_redirected_to vtypes_path
  end
end
