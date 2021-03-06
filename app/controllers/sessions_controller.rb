class SessionsController < ApplicationController
  def new
  end
    #If user login data are valid it will return the access_token so the
    #client app can use it for future request for the specific user.
  def create
    user = User.find_by(email: params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        render :json => "Success", status: 200
      elsif !user
        render json: "That email doesn't exist", status: 422
      elsif !user.authenticate(params[:session][:password])
        render json: "Incorrect Password", status: 422
      end
  end
    #Verifies the access_token so the client app would know if to login the user.
  # def verify_access_token
  #   user = User.find_by(access_token: params[:session][:access_token])
  #     if user
  #       render json: "verified", status: 200
  #     else
  #       render json: "Token failed verification", status: 422
  #     end
  # end
end