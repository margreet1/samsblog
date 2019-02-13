module Admin
  class ReviewsController < ApplicationController
    before_action :authenticate_user!

    # GET /admin/reviews
    def index
      @reviews = Review.all
    end

    # GET /admin/reviews/new
    def new
      @review = Review.new
    end

    # POST /admin/reviews
    def create
      @review = Review.new(review_params)
      @review.picture = Base64.strict_encode64(params[:review][:picture].read)
      if @review.save
        redirect_to admin_reviews_url
      else
        render :new
      end
    end

    # GET /admin/reviews/:id/edit
    def edit
      @review = Review.find(params[:id])
    end

    # PATCH /admin/reviews/:id
    def update
      @review = Review.find(params[:id])
      if @review.update_attributes(params[:review])
        redirect_to admin_reviews_url
      else
        render :edit
      end
    end

    # DELETE /admin/reviews/:id
    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to admin_reviews_url
    end

  private

    def review_params
      params[:review].permit(:restaurant, :picture, :rating, :title, :body)
    end
  end
end
