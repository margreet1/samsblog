class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @review = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(restaurant: params[:restaurant], imageUrl: params[:imageUrl], rating: params[:rating])
    redirect_to action: "index"
  end
end
