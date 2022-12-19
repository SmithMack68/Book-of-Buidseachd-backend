class UsersController < ApplicationController
  skip_before_action :authenticate_user
  # skip_before_action :authenticate_user, only: [:create]
  

  # # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  # def show
  #   # @user = User.find_by(id: session[:user_id])
  #   if current_user
  #     render json: current_user, status: :ok
  #   else
  #     render json: { error: "Not authorized" }, status: :unauthorized
  #   end
  # end

  def show
    @user = User.find_by(id: session[:user_id])
    if @user
      render json: @user, status: :ok
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  # POST /users
  def create 
    @user = User.create!(user_params)
    session[:user_id] = @user.id # login_user from appCont #creates a new session session[:user_id] = @user_id
    render json: @user, status: :created
  end

  # def create
  #   @user = User.create(user_params)
  #     if @user.valid?
  #       session[:user_id] = @user.id
  #       render json: @user, status: :created
  #     else
  #       render json: { error: @user.errors }, status: :unprocessable_entity
  #     end
  # end

  #PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :creature_type, :age, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end
end












 # JWT
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     @token = encode_token({ user_id: @user.id})
  #     render json:{ user: @user, token: @token }, status: :created
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end
   # params.require(:user).permit(:username, :creature_type, :age, :password) for JWT
 # def get_current_user
  #   if logged_in?
  #   render json: current_user, status: :ok
  #   else
  #   render json: { errors: ["No user is currently logged in"]}, status: :unauthorized
  #   end
  # end  

  #def create 
  #   @user = User.new(user_params)
  #   if @user.save
  #     login_user #creates a new session
  #     render json: @user
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  