class SessionsController < ApplicationController
  skip_before_action :authorize, only: :create 

  # post '/login'
  def create 
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])                                  # if user exists and authenticate
      session[:user_id] = user.id                                             # data that keeps the user logged in
      render json: user, status: 201                                          # successfully created
    else  
      render json: { errors: ["Invalid username or password"]}, status: 401   # unauthorized
    end
  end

  # delete '/logout'
  def destroy 
    session.delete :user_id 
    head :no_content
  end
  
end
