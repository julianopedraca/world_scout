class AuthenticationController < ApplicationController

  def login
      @user = User.find_by(email: params[:email])

      if @user && @user.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), username: @user.username }, status: :ok
        else
        render status: :unauthorized, json: {error: "username or password invalid."}
      end
  end

end
