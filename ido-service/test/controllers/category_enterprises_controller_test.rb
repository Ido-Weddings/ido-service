require 'test_helper'

class CategoryEnterprisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_enterprise = category_enterprises(:one)
  end

  test "should get index" do
    get category_enterprises_url
    assert_response :success
  end

  test "should create category_enterprise" do
    assert_difference('CategoryEnterprise.count') do
      post category_enterprises_url, params: { category_enterprise: { base_price: @category_enterprise.base_price, capacity: @category_enterprise.capacity, category_id: @category_enterprise.category_id, description: @category_enterprise.description, enterprise_id: @category_enterprise.enterprise_id } }
    end

    assert_response 201
  end

  test "should show category_enterprise" do
    get category_enterprise_url(@category_enterprise)
    assert_response :success
  end

  test "should update category_enterprise" do
    patch category_enterprise_url(@category_enterprise), params: { category_enterprise: { base_price: @category_enterprise.base_price, capacity: @category_enterprise.capacity, category_id: @category_enterprise.category_id, description: @category_enterprise.description, enterprise_id: @category_enterprise.enterprise_id } }
    assert_response 200
  end

  test "should destroy category_enterprise" do
    assert_difference('CategoryEnterprise.count', -1) do
      delete category_enterprise_url(@category_enterprise)
    end

    assert_response 204
  end
end
