require "test_helper"

class UfValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uf_value = uf_values(:one)
  end

  test "should get index" do
    get uf_values_url, as: :json
    assert_response :success
  end

  test "should create uf_value" do
    assert_difference('UfValue.count') do
      post uf_values_url, params: { uf_value: { client: @uf_value.client, request_date: @uf_value.request_date, uf_value: @uf_value.uf_value } }, as: :json
    end

    assert_response 201
  end

  test "should show uf_value" do
    get uf_value_url(@uf_value), as: :json
    assert_response :success
  end

  test "should update uf_value" do
    patch uf_value_url(@uf_value), params: { uf_value: { client: @uf_value.client, request_date: @uf_value.request_date, uf_value: @uf_value.uf_value } }, as: :json
    assert_response 200
  end

  test "should destroy uf_value" do
    assert_difference('UfValue.count', -1) do
      delete uf_value_url(@uf_value), as: :json
    end

    assert_response 204
  end
end
