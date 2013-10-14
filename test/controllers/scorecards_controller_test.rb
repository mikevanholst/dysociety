require 'test_helper'

class ScorecardsControllerTest < ActionController::TestCase
  setup do
    @scorecard = scorecards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scorecards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scorecard" do
    assert_difference('Scorecard.count') do
      post :create, scorecard: { books: @scorecard.books, chapters: @scorecard.chapters, companies: @scorecard.companies, donations: @scorecard.donations, level: @scorecard.level, sash_id: @scorecard.sash_id, shares: @scorecard.shares, total: @scorecard.total }
    end

    assert_redirected_to scorecard_path(assigns(:scorecard))
  end

  test "should show scorecard" do
    get :show, id: @scorecard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scorecard
    assert_response :success
  end

  test "should update scorecard" do
    patch :update, id: @scorecard, scorecard: { books: @scorecard.books, chapters: @scorecard.chapters, companies: @scorecard.companies, donations: @scorecard.donations, level: @scorecard.level, sash_id: @scorecard.sash_id, shares: @scorecard.shares, total: @scorecard.total }
    assert_redirected_to scorecard_path(assigns(:scorecard))
  end

  test "should destroy scorecard" do
    assert_difference('Scorecard.count', -1) do
      delete :destroy, id: @scorecard
    end

    assert_redirected_to scorecards_path
  end
end
