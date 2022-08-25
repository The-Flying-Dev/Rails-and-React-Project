class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

   # get '/me'
  def show  
    render json: @current_user                                
  end

  # post /signup
  def create 
    user = User.create!(user_params)
    if user.valid? 
      session[:user_id] = user.id                             # data that logs the user in
      render json: user, status: 201                          # successfully created
    else  
      render json: user.errors.full_messages, status: 422     # unprocessable_entity
    end 
  end



  private 

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end

end
