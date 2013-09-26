require 'test_helper'

class JobpostsControllerTest < ActionController::TestCase
  setup do
    @jobpost = jobposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobpost" do
    assert_difference('Jobpost.count') do
      post :create, jobpost: { content: @jobpost.content, user_id: @jobpost.user_id }
    end

    assert_redirected_to jobpost_path(assigns(:jobpost))
  end

  test "should show jobpost" do
    get :show, id: @jobpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobpost
    assert_response :success
  end

  test "should update jobpost" do
    patch :update, id: @jobpost, jobpost: { content: @jobpost.content, user_id: @jobpost.user_id }
    assert_redirected_to jobpost_path(assigns(:jobpost))
  end

  test "should destroy jobpost" do
    assert_difference('Jobpost.count', -1) do
      delete :destroy, id: @jobpost
    end

    assert_redirected_to jobposts_path
  end
end
