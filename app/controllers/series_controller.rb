class SeriesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    series = Series.all

    render json: series
  end
  
  # GET /users/new
#   def new
#     serie = Serie.new
#   end


    # POST /users
#   def create
#     user = User.new(
#         email:params[:session][:email].downcase,
#         first_name:params[:session][:first_name].capitalize,
#         last_name:params[:session][:last_name].capitalize,
#         password:params[:session][:password]
#       )
#     if params[:session][:password] != params[:session][:validatepassword]
#       render json: "Passwords don't match", status: 422
#     elsif user.save
#         # RegistrationMailer.welcome_email(@user).deliver!
#         render json: "Account successfuly created", status: 201
#     else
#         render json: "That email is taken", status: 422
#     end
#   end

 # GET /users/1/edit
#   def edit
#     user = User.find_by(user_params)
#       user = {
#         first_name: user.first_name,
#         last_name: user.last_name,
#         email: user.email.lowercase,
#         balance_floor: user.balance_floor.to_s
#       }
#       render json: user,  status: 200
#   end


#   def update
#     user = User.find_by(email:params[:session][:email]).update_attributes(
#       first_name:params[:first_name],
#       last_name:params[:last_name],
#       email:params[:email],
#       password:params[:password],
#      )
#       render json: "update successful", status: 200
#   end

#     # DELETE /users/1
#   def destroy
#     if @user.destroy
#       render json: "Account has been deleted successfuly", status: 200
#     else
#       render json: "Something went wrong", status: 422
#     end
#   end

#     private
#       # Never trust parameters from the scary internet, only allow the white list through.
#       def user_params
#         params.require(:user).permit(:first_name, :last_name, :email, :password)
#       end

end