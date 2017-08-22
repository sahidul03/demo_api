require 'test_helper'

class LevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level = levels(:one)
  end

  test "should get index" do
    get levels_url, as: :json
    assert_response :success
  end

  test "should create level" do
    assert_difference('Level.count') do
      post levels_url, params: { level: { name: @level.name } }, as: :json
    end

    assert_response 201
  end

  test "should show level" do
    get level_url(@level), as: :json
    assert_response :success
  end

  test "should update level" do
    patch level_url(@level), params: { level: { name: @level.name } }, as: :json
    assert_response 200
  end

  test "should destroy level" do
    assert_difference('Level.count', -1) do
      delete level_url(@level), as: :json
    end

    assert_response 204
  end
end
