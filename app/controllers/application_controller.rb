class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  def index
    @reviews = Review.all
  end
end
