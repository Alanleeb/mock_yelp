class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def show
    @review = Review.all
  end

def create
  @review = Review.new(review_params)

  if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = review.find(params[:id])

    if @review.update(review_params)
      redirect_to review_path :new
    else
      render :edit
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to reviews_path
  end

private

def review_params
  params.require(:review).permit(:stars, :price, :review)
end

end
