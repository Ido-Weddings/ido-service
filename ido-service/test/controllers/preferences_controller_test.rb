require 'test_helper'

class PreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @preference = preferences(:one)
  end

  test "should get index" do
    get preferences_url
    assert_response :success
  end

  test "should create preference" do
    assert_difference('Preference.count') do
      post preferences_url, params: { preference: { guest_amount: @preference.guest_amount, user_id: @preference.user_id } }
    end

    assert_response 201
  end

  test "should show preference" do
    get preference_url(@preference)
    assert_response :success
  end

  test "should update preference" do
    patch preference_url(@preference), params: { preference: { guest_amount: @preference.guest_amount, user_id: @preference.user_id } }
    assert_response 200
  end

  test "should destroy preference" do
    assert_difference('Preference.count', -1) do
      delete preference_url(@preference)
    end

    assert_response 204
  end
end
