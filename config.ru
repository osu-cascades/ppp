# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

if ENV['HTTP_BASIC_AUTH_ENABLED']
  use Rack::Auth::Basic do |u, p|
    [u, p] == [ENV['HTTP_BASIC_AUTH_USERNAME'], ENV['HTTP_BASIC_AUTH_PASSWORD']]
  end
end

run Rails.application
