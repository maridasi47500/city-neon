require "test_helper"

class CreatePlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_place = create_places(:one)
  end

  test "should get index" do
    get create_places_url
    assert_response :success
  end

  test "should get new" do
    get new_create_place_url
    assert_response :success
  end

  test "should create create_place" do
    assert_difference("CreatePlace.count") do
      post create_places_url, params: { create_place: { lat: @create_place.lat, lon: @create_place.lon, name: @create_place.name, user_id: @create_place.user_id } }
    end

    assert_redirected_to create_place_url(CreatePlace.last)
  end

  test "should show create_place" do
    get create_place_url(@create_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_place_url(@create_place)
    assert_response :success
  end

  test "should update create_place" do
    patch create_place_url(@create_place), params: { create_place: { lat: @create_place.lat, lon: @create_place.lon, name: @create_place.name, user_id: @create_place.user_id } }
    assert_redirected_to create_place_url(@create_place)
  end

  test "should destroy create_place" do
    assert_difference("CreatePlace.count", -1) do
      delete create_place_url(@create_place)
    end

    assert_redirected_to create_places_url
  end
end
