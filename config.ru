# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

use Rack::Cors do
  # allow do
  #   origins 'localhost:5000', '127.0.0.1:5000',
  #           /\Ahttp:\/\/192\.168\.0\.\d{1,3}(:\d+)?\z/
  #   # regular expressions can be used here
  #
  #   resource '/file/list_all/', :headers => 'x-domain-token'
  #   resource '/file/at/*',
  #            :methods => [:get, :post, :delete, :put, :patch, :options, :head],
  #            :headers => 'x-domain-token',
  #            :expose  => ['Some-Custom-Response-Header'],
  #            :max_age => 600
  #   # headers to expose
  # end

  allow do
    origins '*'
    # origins 'localhost:5000'
    resource '/public/*',
             :headers => :any,
             :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
             :methods => [:get, :post, :delete, :put, :patch, :options, :head]
  end
end