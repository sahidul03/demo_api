class Api::V1::SyllabusesController < ApplicationController
  before_action :set_syllabus, only: [:show, :update, :destroy]

  # GET /syllabuses
  def index
    @syllabuses = Syllabus.all

    render json: @syllabuses
  end

  # GET /syllabuses/1
  def show
    render json: @syllabus
  end

  # GET /syllabuses/new
  def new
    languages = Language.all
    trades = Trade.all
    levels = Level.all
    render json: {languages: languages, trades: trades, levels: levels}
  end

  # POST /syllabuses
  def create
    @syllabus = Syllabus.new(syllabus_params)
    if @syllabus.save
      params[:syllabus][:languages].each do |language|
        @syllabus.syllabus_languages.create(language_id: language)
      end if params[:syllabus][:languages].any?
      render json: @syllabus, status: :created
    else
      render json: @syllabus.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /syllabuses/1
  def update
    if @syllabus.update(syllabus_params)
      render json: @syllabus
    else
      render json: @syllabus.errors, status: :unprocessable_entity
    end
  end

  # DELETE /syllabuses/1
  def destroy
    @syllabus.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus
      @syllabus = Syllabus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def syllabus_params
      params.require(:syllabus).permit(:syllabus_name, :trade_id, :level_id, :manager, :development_officer, :active_date, :upload_syllabus, :upload_test_plan)
    end
end
