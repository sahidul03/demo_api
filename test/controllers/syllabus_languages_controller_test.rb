require 'test_helper'

class SyllabusLanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @syllabus_language = syllabus_languages(:one)
  end

  test "should get index" do
    get syllabus_languages_url, as: :json
    assert_response :success
  end

  test "should create syllabus_language" do
    assert_difference('SyllabusLanguage.count') do
      post syllabus_languages_url, params: { syllabus_language: { language_id: @syllabus_language.language_id, syllabus_id: @syllabus_language.syllabus_id } }, as: :json
    end

    assert_response 201
  end

  test "should show syllabus_language" do
    get syllabus_language_url(@syllabus_language), as: :json
    assert_response :success
  end

  test "should update syllabus_language" do
    patch syllabus_language_url(@syllabus_language), params: { syllabus_language: { language_id: @syllabus_language.language_id, syllabus_id: @syllabus_language.syllabus_id } }, as: :json
    assert_response 200
  end

  test "should destroy syllabus_language" do
    assert_difference('SyllabusLanguage.count', -1) do
      delete syllabus_language_url(@syllabus_language), as: :json
    end

    assert_response 204
  end
end
