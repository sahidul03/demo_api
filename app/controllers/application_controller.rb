class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  # include ActionController::Serialization
  # protect_from_forgery with: :null_session

  # protect_from_forgery with: :exception

end
