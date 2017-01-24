require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
      @user = users(:aaron)
      @other_user = users(:mike)
  end

  test "should redirect from index when not logged in" do
    get users_path
    assert_redirected_to login_url
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

end
