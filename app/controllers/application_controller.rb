class ApplicationController < ActionController::Base
  def index
    @reviews = Review.all
  end
end
