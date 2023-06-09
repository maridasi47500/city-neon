require "application_system_test_case"

class MusicsTest < ApplicationSystemTestCase
  setup do
    @music = musics(:one)
  end

  test "visiting the index" do
    visit musics_url
    assert_selector "h1", text: "Musics"
  end

  test "should create music" do
    visit musics_url
    click_on "New music"

    fill_in "Filename", with: @music.filename
    click_on "Create Music"

    assert_text "Music was successfully created"
    click_on "Back"
  end

  test "should update Music" do
    visit music_url(@music)
    click_on "Edit this music", match: :first

    fill_in "Filename", with: @music.filename
    click_on "Update Music"

    assert_text "Music was successfully updated"
    click_on "Back"
  end

  test "should destroy Music" do
    visit music_url(@music)
    click_on "Destroy this music", match: :first

    assert_text "Music was successfully destroyed"
  end
end
