require "application_system_test_case"

class CreatePlacesTest < ApplicationSystemTestCase
  setup do
    @create_place = create_places(:one)
  end

  test "visiting the index" do
    visit create_places_url
    assert_selector "h1", text: "Create places"
  end

  test "should create create place" do
    visit create_places_url
    click_on "New create place"

    fill_in "Lat", with: @create_place.lat
    fill_in "Lon", with: @create_place.lon
    fill_in "Name", with: @create_place.name
    fill_in "User", with: @create_place.user_id
    click_on "Create Create place"

    assert_text "Create place was successfully created"
    click_on "Back"
  end

  test "should update Create place" do
    visit create_place_url(@create_place)
    click_on "Edit this create place", match: :first

    fill_in "Lat", with: @create_place.lat
    fill_in "Lon", with: @create_place.lon
    fill_in "Name", with: @create_place.name
    fill_in "User", with: @create_place.user_id
    click_on "Update Create place"

    assert_text "Create place was successfully updated"
    click_on "Back"
  end

  test "should destroy Create place" do
    visit create_place_url(@create_place)
    click_on "Destroy this create place", match: :first

    assert_text "Create place was successfully destroyed"
  end
end
