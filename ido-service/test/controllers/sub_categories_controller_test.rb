require 'test_helper'

class SubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_category = sub_categories(:one)
  end

  test "should get index" do
    get sub_categories_url
    assert_response :success
  end

  test "should create sub_category" do
    assert_difference('SubCategory.count') do
      post sub_categories_url, params: { sub_category: { active: @sub_category.active, category_id: @sub_category.category_id, name: @sub_category.name } }
    end

    assert_response 201
  end

  test "should show sub_category" do
    get sub_category_url(@sub_category)
    assert_response :success
  end

  test "should update sub_category" do
    patch sub_category_url(@sub_category), params: { sub_category: { active: @sub_category.active, category_id: @sub_category.category_id, name: @sub_category.name } }
    assert_response 200
  end

  test "should destroy sub_category" do
    assert_difference('SubCategory.count', -1) do
      delete sub_category_url(@sub_category)
    end

    assert_response 204
  end
end
