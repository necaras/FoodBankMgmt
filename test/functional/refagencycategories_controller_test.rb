require 'test_helper'

class RefagencycategoriesControllerTest < ActionController::TestCase
  setup do
    @refagencycategory = refagencycategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refagencycategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refagencycategory" do
    assert_difference('Refagencycategory.count') do
      post :create, refagencycategory: @refagencycategory.attributes
    end

    assert_redirected_to refagencycategory_path(assigns(:refagencycategory))
  end

  test "should show refagencycategory" do
    get :show, id: @refagencycategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refagencycategory
    assert_response :success
  end

  test "should update refagencycategory" do
    put :update, id: @refagencycategory, refagencycategory: @refagencycategory.attributes
    assert_redirected_to refagencycategory_path(assigns(:refagencycategory))
  end

  test "should destroy refagencycategory" do
    assert_difference('Refagencycategory.count', -1) do
      delete :destroy, id: @refagencycategory
    end

    assert_redirected_to refagencycategories_path
  end
end
