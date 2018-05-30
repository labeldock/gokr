require "application_system_test_case"

class CronsTest < ApplicationSystemTestCase
  setup do
    @cron = crons(:one)
  end

  test "visiting the index" do
    visit crons_url
    assert_selector "h1", text: "Crons"
  end

  test "creating a Cron" do
    visit crons_url
    click_on "New Cron"

    fill_in "Every", with: @cron.every
    fill_in "Parameter", with: @cron.parameter
    fill_in "Task", with: @cron.task_id
    fill_in "User", with: @cron.user_id
    click_on "Create Cron"

    assert_text "Cron was successfully created"
    click_on "Back"
  end

  test "updating a Cron" do
    visit crons_url
    click_on "Edit", match: :first

    fill_in "Every", with: @cron.every
    fill_in "Parameter", with: @cron.parameter
    fill_in "Task", with: @cron.task_id
    fill_in "User", with: @cron.user_id
    click_on "Update Cron"

    assert_text "Cron was successfully updated"
    click_on "Back"
  end

  test "destroying a Cron" do
    visit crons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cron was successfully destroyed"
  end
end
