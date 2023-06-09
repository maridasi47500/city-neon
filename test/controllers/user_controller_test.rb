require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get user_info_url
    assert_response :success
  end
end
