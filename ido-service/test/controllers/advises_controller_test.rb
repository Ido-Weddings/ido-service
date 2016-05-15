require 'test_helper'

class AdvisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advise = advises(:one)
  end

  test "should get index" do
    get advises_url
    assert_response :success
  end

  test "should create advise" do
    assert_difference('Advise.count') do
      post advises_url, params: { advise: { content: @advise.content, enterprise_id: @advise.enterprise_id, user_id: @advise.user_id } }
    end

    assert_response 201
  end

  test "should show advise" do
    get advise_url(@advise)
    assert_response :success
  end

  test "should update advise" do
    patch advise_url(@advise), params: { advise: { content: @advise.content, enterprise_id: @advise.enterprise_id, user_id: @advise.user_id } }
    assert_response 200
  end

  test "should destroy advise" do
    assert_difference('Advise.count', -1) do
      delete advise_url(@advise)
    end

    assert_response 204
  end
end
