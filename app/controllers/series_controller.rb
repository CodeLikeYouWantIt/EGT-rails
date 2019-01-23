class SeriesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    series = Series.all.order(created_at: :desc)

    render json: series
  end
  
  # GET /users/new
#   def new
#     serie = Serie.new
#   end


    # POST /users
  def create
    serie = Series.create(
      title:params[:title],
      url:params[:url],
      user_id:params[:user_id]
    )

    if serie
      render json: "Success", status:200
    elsif !serie
      render json: "please try again", status:422
    end
  end

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
  def destroy
    binding.pry
  end

#     private
#       # Never trust parameters from the scary internet, only allow the white list through.
#       def user_params
#         params.require(:user).permit(:first_name, :last_name, :email, :password)
#       end

end