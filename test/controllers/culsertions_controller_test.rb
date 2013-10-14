require 'test_helper'

class CulsertionsControllerTest < ActionController::TestCase
  setup do
    @culsertion = culsertions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:culsertions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create culsertion" do
    assert_difference('Culsertion.count') do
      post :create, culsertion: { content: @culsertion.content, tally: @culsertion.tally, title: @culsertion.title }
    end

    assert_redirected_to culsertion_path(assigns(:culsertion))
  end

  test "should show culsertion" do
    get :show, id: @culsertion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @culsertion
    assert_response :success
  end

  test "should update culsertion" do
    patch :update, id: @culsertion, culsertion: { content: @culsertion.content, tally: @culsertion.tally, title: @culsertion.title }
    assert_redirected_to culsertion_path(assigns(:culsertion))
  end

  test "should destroy culsertion" do
    assert_difference('Culsertion.count', -1) do
      delete :destroy, id: @culsertion
    end

    assert_redirected_to culsertions_path
  end
end
