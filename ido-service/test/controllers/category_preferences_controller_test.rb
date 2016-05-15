require 'test_helper'

class CategoryPreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_preference = category_preferences(:one)
  end

  test "should get index" do
    get category_preferences_url
    assert_response :success
  end

  test "should create category_preference" do
    assert_difference('CategoryPreference.count') do
      post category_preferences_url, params: { category_preference: { budget: @category_preference.budget, category_id: @category_preference.category_id, preference_id: @category_preference.preference_id } }
    end

    assert_response 201
  end

  test "should show category_preference" do
    get category_preference_url(@category_preference)
    assert_response :success
  end

  test "should update category_preference" do
    patch category_preference_url(@category_preference), params: { category_preference: { budget: @category_preference.budget, category_id: @category_preference.category_id, preference_id: @category_preference.preference_id } }
    assert_response 200
  end

  test "should destroy category_preference" do
    assert_difference('CategoryPreference.count', -1) do
      delete category_preference_url(@category_preference)
    end

    assert_response 204
  end
end
