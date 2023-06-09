require "application_system_test_case"

class RadiowavesTest < ApplicationSystemTestCase
  setup do
    @radiowafe = radiowaves(:one)
  end

  test "visiting the index" do
    visit radiowaves_url
    assert_selector "h1", text: "Radiowaves"
  end

  test "should create radiowave" do
    visit radiowaves_url
    click_on "New radiowave"

    fill_in "Name", with: @radiowafe.name
    click_on "Create Radiowave"

    assert_text "Radiowave was successfully created"
    click_on "Back"
  end

  test "should update Radiowave" do
    visit radiowafe_url(@radiowafe)
    click_on "Edit this radiowave", match: :first

    fill_in "Name", with: @radiowafe.name
    click_on "Update Radiowave"

    assert_text "Radiowave was successfully updated"
    click_on "Back"
  end

  test "should destroy Radiowave" do
    visit radiowafe_url(@radiowafe)
    click_on "Destroy this radiowave", match: :first

    assert_text "Radiowave was successfully destroyed"
  end
end
