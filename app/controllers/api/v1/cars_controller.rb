class Api::V1::CarsController < ApplicationController
  before_action :authenticate_user!
  # after_action :allow_cross_domain_access

  def index
    cars = Car.all
    render json: cars
  end

  def show
    car= Car.find(params[:id])
    render json: car
  end

  def create
    car = Car.new(params_car)
    if car.save
      render json: car, status: :created
    else
      # raise car.errors.messages.inspect
      render json: { errors: car.errors.messages }, status: :unprocessable_entity
    end

  end

  protected

  def params_car
    params.require(:car).permit(:title, :details, :price, :discount, :photo)
  end

  # def allow_cross_domain_access
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
  #   headers['Access-Control-Request-Method'] = '*'
  #   headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  # end

end
