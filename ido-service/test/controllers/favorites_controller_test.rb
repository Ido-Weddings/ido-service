require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite = favorites(:one)
  end

  test "should get index" do
    get favorites_url
    assert_response :success
  end

  test "should create favorite" do
    assert_difference('Favorite.count') do
      post favorites_url, params: { favorite: { enterprise_id: @favorite.enterprise_id, user_id: @favorite.user_id } }
    end

    assert_response 201
  end

  test "should show favorite" do
    get favorite_url(@favorite)
    assert_response :success
  end

  test "should update favorite" do
    patch favorite_url(@favorite), params: { favorite: { enterprise_id: @favorite.enterprise_id, user_id: @favorite.user_id } }
    assert_response 200
  end

  test "should destroy favorite" do
    assert_difference('Favorite.count', -1) do
      delete favorite_url(@favorite)
    end

    assert_response 204
  end
end
