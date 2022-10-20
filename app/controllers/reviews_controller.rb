class ReviewsController < ApplicationController
  skip_before_action :authenticate_user
  # before_action :is_owner?, only: [:create, :update, :destroy]

  # GET /reviews
  def index
    @reviews = Review.all
    render json: @reviews
  end

  # GET /reviews/1
  def show
    @review = Review.find(params[:id])
    render json: @review,  status: :ok
  end

  # POST /reviews
  def create
    user = User.find(session[:user_id])
    if user
      review = Review.create!(comment: params[:comment], username: params[:username], user_id: user.id,spell_id: params[:spell_id])
      render json: review
    else
      render json: {error: "User Not Found"},status: 404
    end
  #  comment username user_id spell_id
  end


  # PATCH/PUT /reviews/1
  def update
    @review = Review.find(params[:id])
    @review.update!(review_params)
    render json: @review,  status: :accepted
  end

  # DELETE /reviews/1
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render json: @review
  end

  private
    # Only allow a list of trusted parameters through.
    def review_params
      params.permit(:username, :comment, :spell_id, :user_id)
    end

    # def is_owner? 
    #   permitted = @review.user_id == current_user.id 
    #   render json: {errors:{User: "does not own this review"}}, status: :forbidden unless permitted
    # end
end


# Use callbacks to share common setup or constraints between actions.
    # def set_review
    #   @review = Review.find(params[:id])
    # end