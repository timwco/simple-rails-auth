# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

require 'rack/cors'

use Rack::Cors do

  allow do
    origins '*'
    resource '*',
             :headers => :any,
             :expose => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
             :methods => [:options, :get, :post, :delete, :put, :patch]
  end
end