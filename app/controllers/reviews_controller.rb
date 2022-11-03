class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]
  before_action :authorize_user, only: [:update, :destroy]

  # GET /reviews
  def index
    @reviews = Review.all
    render json: @reviews
  end

  # GET /reviews/1
  def show
    # @review = Review.find(params[:id])
    render json: @review,  status: :ok
  end

  # POST /reviews
  def create
    user = User.find(session[:user_id])
    if user
      review = Review.create!(comment: params[:comment], username: params[:username], user_id: user.id, spell_id: params[:spell_id])
      render json: review
    else
      render json: {error: "User Not Found"}, status: 404
    end
  #  comment username user_id spell_id
  end


  # PATCH/PUT /reviews/1
  def update
    # @review = Review.find(params[:id])
    @review.update!(review_params)
    render json: @review,  status: :accepted
  end

  # DELETE /reviews/1
  def destroy
    # @review = Review.find(params[:id])
    @review.destroy
    render json: @review
  end

  private
    # Only allow a list of trusted parameters through.
    def review_params
      params.permit(:username, :comment, :spell_id, :user_id)
    end

    def set_review
      @review = Review.find(params[:id])
    end

    def authorize_user
      permitted = current_user.id == @review.user_id
      render json: {errors:{User: "does not own this review"}}, status: :forbidden unless permitted
    end
end


# def is_authorized? 
    #     permitted = current_user.author? || @review.user_id = current_user.id
    #     render json: {errors: {User: "did not write this review"}}, status: :forbidden unless permitted
    # end
