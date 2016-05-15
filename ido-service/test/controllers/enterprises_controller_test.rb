require 'test_helper'

class EnterprisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enterprise = enterprises(:one)
  end

  test "should get index" do
    get enterprises_url
    assert_response :success
  end

  test "should create enterprise" do
    assert_difference('Enterprise.count') do
      post enterprises_url, params: { enterprise: { address: @enterprise.address, cellphone: @enterprise.cellphone, description: @enterprise.description, email: @enterprise.email, is_freelance: @enterprise.is_freelance, latitude: @enterprise.latitude, longitude: @enterprise.longitude, name: @enterprise.name, register_id: @enterprise.register_id, telephone: @enterprise.telephone } }
    end

    assert_response 201
  end

  test "should show enterprise" do
    get enterprise_url(@enterprise)
    assert_response :success
  end

  test "should update enterprise" do
    patch enterprise_url(@enterprise), params: { enterprise: { address: @enterprise.address, cellphone: @enterprise.cellphone, description: @enterprise.description, email: @enterprise.email, is_freelance: @enterprise.is_freelance, latitude: @enterprise.latitude, longitude: @enterprise.longitude, name: @enterprise.name, register_id: @enterprise.register_id, telephone: @enterprise.telephone } }
    assert_response 200
  end

  test "should destroy enterprise" do
    assert_difference('Enterprise.count', -1) do
      delete enterprise_url(@enterprise)
    end

    assert_response 204
  end
end
