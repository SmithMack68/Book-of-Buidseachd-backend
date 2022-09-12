class SessionsController < ApplicationController
  skip_before_action :authorized

  def get_current_user
    #retrieve and decode token for current user
    render json: current_user
  end

end