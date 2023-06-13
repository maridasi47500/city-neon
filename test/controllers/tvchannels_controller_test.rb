require "test_helper"

class TvchannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tvchannel = tvchannels(:one)
  end

  test "should get index" do
    get tvchannels_url
    assert_response :success
  end

  test "should get new" do
    get new_tvchannel_url
    assert_response :success
  end

  test "should create tvchannel" do
    assert_difference("Tvchannel.count") do
      post tvchannels_url, params: { tvchannel: { name: @tvchannel.name } }
    end

    assert_redirected_to tvchannel_url(Tvchannel.last)
  end

  test "should show tvchannel" do
    get tvchannel_url(@tvchannel)
    assert_response :success
  end

  test "should get edit" do
    get edit_tvchannel_url(@tvchannel)
    assert_response :success
  end

  test "should update tvchannel" do
    patch tvchannel_url(@tvchannel), params: { tvchannel: { name: @tvchannel.name } }
    assert_redirected_to tvchannel_url(@tvchannel)
  end

  test "should destroy tvchannel" do
    assert_difference("Tvchannel.count", -1) do
      delete tvchannel_url(@tvchannel)
    end

    assert_redirected_to tvchannels_url
  end
end
