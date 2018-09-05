class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end
end
