require 'test_helper'

class SyllabusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus = syllabuses(:one)
  end

  test "should get index" do
    get syllabuses_url, as: :json
    assert_response :success
  end

  test "should create syllabus" do
    assert_difference('Syllabus.count') do
      post syllabuses_url, params: { syllabus: { active_date: @syllabus.active_date, development_officer: @syllabus.development_officer, level_id: @syllabus.level_id, manager: @syllabus.manager, syllabus_name: @syllabus.syllabus_name, trade_id: @syllabus.trade_id, upload_syllabus: @syllabus.upload_syllabus, upload_test_plan: @syllabus.upload_test_plan } }, as: :json
    end

    assert_response 201
  end

  test "should show syllabus" do
    get syllabus_url(@syllabus), as: :json
    assert_response :success
  end

  test "should update syllabus" do
    patch syllabus_url(@syllabus), params: { syllabus: { active_date: @syllabus.active_date, development_officer: @syllabus.development_officer, level_id: @syllabus.level_id, manager: @syllabus.manager, syllabus_name: @syllabus.syllabus_name, trade_id: @syllabus.trade_id, upload_syllabus: @syllabus.upload_syllabus, upload_test_plan: @syllabus.upload_test_plan } }, as: :json
    assert_response 200
  end

  test "should destroy syllabus" do
    assert_difference('Syllabus.count', -1) do
      delete syllabus_url(@syllabus), as: :json
    end

    assert_response 204
  end
end
