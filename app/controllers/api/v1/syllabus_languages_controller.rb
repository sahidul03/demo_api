class Api::V1::SyllabusLanguagesController < ApplicationController
  before_action :set_syllabus_language, only: [:show, :update, :destroy]

  # GET /syllabus_languages
  def index
    @syllabus_languages = SyllabusLanguage.all

    render json: @syllabus_languages
  end

  # GET /syllabus_languages/1
  def show
    render json: @syllabus_language
  end

  # POST /syllabus_languages
  def create
    @syllabus_language = SyllabusLanguage.new(syllabus_language_params)

    if @syllabus_language.save
      render json: @syllabus_language, status: :created, location: @syllabus_language
    else
      render json: @syllabus_language.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /syllabus_languages/1
  def update
    if @syllabus_language.update(syllabus_language_params)
      render json: @syllabus_language
    else
      render json: @syllabus_language.errors, status: :unprocessable_entity
    end
  end

  # DELETE /syllabus_languages/1
  def destroy
    @syllabus_language.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus_language
      @syllabus_language = SyllabusLanguage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def syllabus_language_params
      params.require(:syllabus_language).permit(:language_id, :syllabus_id)
    end
end
