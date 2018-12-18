class AuthenticationController < ApplicationController
 skip_before_action :authenticate_request

 def authenticate
    email = params[:email]
    password = params[:password]

    command = AuthenticateUser.call(params[:email], params[:password])
    user = User.find_by(email:params[:email])
    
    if command.success?
      render json: {auth_token: command.result, user_id: user.id}
    elsif user.nil?
      render json: "Email does not exits", status:422
    else
      render json: "Incorrect Password", status:422
    end
  end
end