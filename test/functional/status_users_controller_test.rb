require 'test_helper'

class StatusUsersControllerTest < ActionController::TestCase
  setup do
    @status_user = status_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_user" do
    assert_difference('StatusUser.count') do
      post :create, status_user: { content: @status_user.content, name: @status_user.name }
    end

    assert_redirected_to status_user_path(assigns(:status_user))
  end

  test "should show status_user" do
    get :show, id: @status_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_user
    assert_response :success
  end

  test "should update status_user" do
    put :update, id: @status_user, status_user: { content: @status_user.content, name: @status_user.name }
    assert_redirected_to status_user_path(assigns(:status_user))
  end

  test "should destroy status_user" do
    assert_difference('StatusUser.count', -1) do
      delete :destroy, id: @status_user
    end

    assert_redirected_to status_users_path
  end
end
