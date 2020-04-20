require "application_system_test_case"

class ChirpsTest < ApplicationSystemTestCase
  setup do
    @chirp = chirps(:one)
  end

  test "visiting the index" do
    visit chirps_url
    assert_selector "h1", text: "Chirps"
  end

  test "creating a Chirp" do
    visit chirps_url
    click_on "New Chirp"

    fill_in "Chirp", with: @chirp.chirp
    click_on "Create Chirp"

    assert_text "Chirp was successfully created"
    click_on "Back"
  end

  test "updating a Chirp" do
    visit chirps_url
    click_on "Edit", match: :first

    fill_in "Chirp", with: @chirp.chirp
    click_on "Update Chirp"

    assert_text "Chirp was successfully updated"
    click_on "Back"
  end

  test "destroying a Chirp" do
    visit chirps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chirp was successfully destroyed"
  end
end
