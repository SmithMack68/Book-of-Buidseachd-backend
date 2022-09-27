class SessionsController < ApplicationController
  skip_before_action :authorized

  #Sessions-
  # POST '/login' - create a new session (not create a USER)
  def create
    @user = User.find_by_username(params[:username])
    # if @user && @user.authenticate(params[:password])
    if @user&.authenticate(params[:password])
      # login_user
      session[:user_id] = @user.id
      render json: @user, status: :ok
    else
      render json: { errors: ["Username and Password must match"]}, status: :unauthorized
    end
  end

  #DELETE '/logout' - destroy the session
  def destroy
   session.delete(:user_id)
   head :no_content
  end

end

 #JWT
  # def get_current_user
    #retrieve and decode token for current user
  #   render json: current_user
  # end

  # def login
  #   @user = User.find_by(username: params[:username])
  #   if @user && @user.authenticate(params[:password])
  #      @token = encode_token({ user_id: @user.id})
  #     render json:{ user: @user, token: @token }, status: :ok
  #   else
  #     render json: { errors: ["Username and Password must match"] }, status: :unprocessable_entity
  #   end
  # end