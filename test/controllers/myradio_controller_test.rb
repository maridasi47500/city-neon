require "test_helper"

class MyradioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myradio_index_url
    assert_response :success
  end
end
