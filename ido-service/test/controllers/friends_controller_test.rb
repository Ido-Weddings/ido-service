require 'test_helper'

class FriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend = friends(:one)
  end

  test "should get index" do
    get friends_url
    assert_response :success
  end

  test "should create friend" do
    assert_difference('Friend.count') do
      post friends_url, params: { friend: { friend_id: @friend.friend_id, user_id: @friend.user_id } }
    end

    assert_response 201
  end

  test "should show friend" do
    get friend_url(@friend)
    assert_response :success
  end

  test "should update friend" do
    patch friend_url(@friend), params: { friend: { friend_id: @friend.friend_id, user_id: @friend.user_id } }
    assert_response 200
  end

  test "should destroy friend" do
    assert_difference('Friend.count', -1) do
      delete friend_url(@friend)
    end

    assert_response 204
  end
end
