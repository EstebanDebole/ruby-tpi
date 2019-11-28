class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # POST /sesiones
  def login
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      time = time = Time.now + 30.minutes.to_i
      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                     username: @user.username }, status: :ok
    else
      render json: { errors: { message: 'unauthorized' }}, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:username, :password)
  end
end

