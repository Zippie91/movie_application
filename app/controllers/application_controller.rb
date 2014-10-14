class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'themoviedb'

  before_filter :set_config
  Tmdb::Api.key("4ea376f8180c5c0f5c0bac84e872e116")

  def set_config
    @configuration = Tmdb::Configuration.new
  end
end
