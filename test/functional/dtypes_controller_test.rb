require 'test_helper'

class DtypesControllerTest < ActionController::TestCase
  setup do
    @dtype = dtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dtype" do
    assert_difference('Dtype.count') do
      post :create, dtype: @dtype.attributes
    end

    assert_redirected_to dtype_path(assigns(:dtype))
  end

  test "should show dtype" do
    get :show, id: @dtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dtype
    assert_response :success
  end

  test "should update dtype" do
    put :update, id: @dtype, dtype: @dtype.attributes
    assert_redirected_to dtype_path(assigns(:dtype))
  end

  test "should destroy dtype" do
    assert_difference('Dtype.count', -1) do
      delete :destroy, id: @dtype
    end

    assert_redirected_to dtypes_path
  end
end
