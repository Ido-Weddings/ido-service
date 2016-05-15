require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture = pictures(:one)
  end

  test "should get index" do
    get pictures_url
    assert_response :success
  end

  test "should create picture" do
    assert_difference('Picture.count') do
      post pictures_url, params: { picture: { category_enterprise_id: @picture.category_enterprise_id, message_id: @picture.message_id, url: @picture.url, user_id: @picture.user_id } }
    end

    assert_response 201
  end

  test "should show picture" do
    get picture_url(@picture)
    assert_response :success
  end

  test "should update picture" do
    patch picture_url(@picture), params: { picture: { category_enterprise_id: @picture.category_enterprise_id, message_id: @picture.message_id, url: @picture.url, user_id: @picture.user_id } }
    assert_response 200
  end

  test "should destroy picture" do
    assert_difference('Picture.count', -1) do
      delete picture_url(@picture)
    end

    assert_response 204
  end
end
