require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  def log_in_as(user)
    # TODO simulate login
  end

  setup do
    @user = users(:one)
  end

  test "should get index" do
    log_in_as(@user)
    get users_url
    assert_response :success
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: {  } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end

  test "should redirect index when not logged in" do
    # Simulate not being logged in
    get users_url
    assert_redirected_to '/auth/google_oauth2'
  end
end
