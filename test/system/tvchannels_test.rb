require "application_system_test_case"

class TvchannelsTest < ApplicationSystemTestCase
  setup do
    @tvchannel = tvchannels(:one)
  end

  test "visiting the index" do
    visit tvchannels_url
    assert_selector "h1", text: "Tvchannels"
  end

  test "should create tvchannel" do
    visit tvchannels_url
    click_on "New tvchannel"

    fill_in "Name", with: @tvchannel.name
    click_on "Create Tvchannel"

    assert_text "Tvchannel was successfully created"
    click_on "Back"
  end

  test "should update Tvchannel" do
    visit tvchannel_url(@tvchannel)
    click_on "Edit this tvchannel", match: :first

    fill_in "Name", with: @tvchannel.name
    click_on "Update Tvchannel"

    assert_text "Tvchannel was successfully updated"
    click_on "Back"
  end

  test "should destroy Tvchannel" do
    visit tvchannel_url(@tvchannel)
    click_on "Destroy this tvchannel", match: :first

    assert_text "Tvchannel was successfully destroyed"
  end
end
