class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :set_user, only: [:show, :update, :destroy ]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    if current_user
        render json: current_user, status: : ok
    else
        render json: { error: "No current user logged in"}, status: :unauthorized
    end
  end

  # POST /users
  def create 
    @user = User.create!(user_params)
    login_user #creates a new session session[:user_id] = @user_id
    render json: @user, status: :created
  end

  def get_current_user
    if logged_in?
    render json: current_user, status: :ok
    else
    render json: { errors: ["No user is currently logged in"]}, status: :unauthorized
    end
  end  

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :creature_type, :age, :password)
     
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

  #def create ENOCH
  #   @user = User.new(user_params)
  #   if @user.save
  #     login_user #creates a new session
  #     render json: @user
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  