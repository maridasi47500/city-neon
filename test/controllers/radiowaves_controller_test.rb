require "test_helper"

class RadiowavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @radiowafe = radiowaves(:one)
  end

  test "should get index" do
    get radiowaves_url
    assert_response :success
  end

  test "should get new" do
    get new_radiowafe_url
    assert_response :success
  end

  test "should create radiowafe" do
    assert_difference("Radiowave.count") do
      post radiowaves_url, params: { radiowafe: { name: @radiowafe.name } }
    end

    assert_redirected_to radiowafe_url(Radiowave.last)
  end

  test "should show radiowafe" do
    get radiowafe_url(@radiowafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_radiowafe_url(@radiowafe)
    assert_response :success
  end

  test "should update radiowafe" do
    patch radiowafe_url(@radiowafe), params: { radiowafe: { name: @radiowafe.name } }
    assert_redirected_to radiowafe_url(@radiowafe)
  end

  test "should destroy radiowafe" do
    assert_difference("Radiowave.count", -1) do
      delete radiowafe_url(@radiowafe)
    end

    assert_redirected_to radiowaves_url
  end
end
