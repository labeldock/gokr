require "application_system_test_case"

class LandsTest < ApplicationSystemTestCase
  setup do
    @land = lands(:one)
  end

  test "visiting the index" do
    visit lands_url
    assert_selector "h1", text: "Lands"
  end

  test "creating a Land" do
    visit lands_url
    click_on "New Land"

    fill_in "Data", with: @land.data
    fill_in "Domain", with: @land.domain
    fill_in "End", with: @land.end
    fill_in "Head", with: @land.head
    fill_in "Role", with: @land.role
    fill_in "Start", with: @land.start
    fill_in "Tags", with: @land.tags
    fill_in "Version", with: @land.version
    click_on "Create Land"

    assert_text "Land was successfully created"
    click_on "Back"
  end

  test "updating a Land" do
    visit lands_url
    click_on "Edit", match: :first

    fill_in "Data", with: @land.data
    fill_in "Domain", with: @land.domain
    fill_in "End", with: @land.end
    fill_in "Head", with: @land.head
    fill_in "Role", with: @land.role
    fill_in "Start", with: @land.start
    fill_in "Tags", with: @land.tags
    fill_in "Version", with: @land.version
    click_on "Update Land"

    assert_text "Land was successfully updated"
    click_on "Back"
  end

  test "destroying a Land" do
    visit lands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Land was successfully destroyed"
  end
end
