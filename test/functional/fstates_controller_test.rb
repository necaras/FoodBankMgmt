require 'test_helper'

class FstatesControllerTest < ActionController::TestCase
  setup do
    @fstate = fstates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fstates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fstate" do
    assert_difference('Fstate.count') do
      post :create, fstate: @fstate.attributes
    end

    assert_redirected_to fstate_path(assigns(:fstate))
  end

  test "should show fstate" do
    get :show, id: @fstate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fstate
    assert_response :success
  end

  test "should update fstate" do
    put :update, id: @fstate, fstate: @fstate.attributes
    assert_redirected_to fstate_path(assigns(:fstate))
  end

  test "should destroy fstate" do
    assert_difference('Fstate.count', -1) do
      delete :destroy, id: @fstate
    end

    assert_redirected_to fstates_path
  end
end
