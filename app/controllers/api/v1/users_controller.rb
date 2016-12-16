class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: { message: "welcome to demo api app." }
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

end
