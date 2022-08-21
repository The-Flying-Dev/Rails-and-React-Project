class ApplicationController < ActionController::API 
=begin
    
  rescue => exception
    
  end
  include ActionController::Cookies #provides access to cookies to all child controllers
  rescue_from ActiveRecord::RecordInvalid, with: :handle_invalid
  before_action :authorize 


  private 

  # using instance variable to persist data for the session
  def authorize 
    @current_user = User.find_by(id: session[:user_id])
    
    render json: { errors: ["Not authorized"]}, status: 401 unless @current_user      # unauthorized
  end

  def handle_invalid(exception)
    render json: { errors: exception.record.errors.full_messages }, status: 422       # unprocessable_entity
  end

=end

end
