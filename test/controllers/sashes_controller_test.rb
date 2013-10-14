require 'test_helper'

class SashesControllerTest < ActionController::TestCase
  setup do
    @sash = sashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sash" do
    assert_difference('Sash.count') do
      post :create, sash: {  }
    end

    assert_redirected_to sash_path(assigns(:sash))
  end

  test "should show sash" do
    get :show, id: @sash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sash
    assert_response :success
  end

  test "should update sash" do
    patch :update, id: @sash, sash: {  }
    assert_redirected_to sash_path(assigns(:sash))
  end

  test "should destroy sash" do
    assert_difference('Sash.count', -1) do
      delete :destroy, id: @sash
    end

    assert_redirected_to sashes_path
  end
end
