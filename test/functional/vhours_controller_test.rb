require 'test_helper'

class VhoursControllerTest < ActionController::TestCase
  setup do
    @vhour = vhours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vhours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vhour" do
    assert_difference('Vhour.count') do
      post :create, vhour: @vhour.attributes
    end

    assert_redirected_to vhour_path(assigns(:vhour))
  end

  test "should show vhour" do
    get :show, id: @vhour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vhour
    assert_response :success
  end

  test "should update vhour" do
    put :update, id: @vhour, vhour: @vhour.attributes
    assert_redirected_to vhour_path(assigns(:vhour))
  end

  test "should destroy vhour" do
    assert_difference('Vhour.count', -1) do
      delete :destroy, id: @vhour
    end

    assert_redirected_to vhours_path
  end
end
