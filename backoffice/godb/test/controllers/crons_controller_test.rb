require 'test_helper'

class CronsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cron = crons(:one)
  end

  test "should get index" do
    get crons_url
    assert_response :success
  end

  test "should get new" do
    get new_cron_url
    assert_response :success
  end

  test "should create cron" do
    assert_difference('Cron.count') do
      post crons_url, params: { cron: { every: @cron.every, parameter: @cron.parameter, task_id: @cron.task_id, user_id: @cron.user_id } }
    end

    assert_redirected_to cron_url(Cron.last)
  end

  test "should show cron" do
    get cron_url(@cron)
    assert_response :success
  end

  test "should get edit" do
    get edit_cron_url(@cron)
    assert_response :success
  end

  test "should update cron" do
    patch cron_url(@cron), params: { cron: { every: @cron.every, parameter: @cron.parameter, task_id: @cron.task_id, user_id: @cron.user_id } }
    assert_redirected_to cron_url(@cron)
  end

  test "should destroy cron" do
    assert_difference('Cron.count', -1) do
      delete cron_url(@cron)
    end

    assert_redirected_to crons_url
  end
end
