class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  helper_method :current_user

  def current_user
    token = request.headers["X-AUTH-TOKEN"]
    token && User.find_by!(auth_token: token)
  end

  def authenticate_user!
    unless current_user
      render json: { error: "User not authenticated. Token does not match any on record." }, status: :unauthorized
    end
  end

  rescue_from ActiveRecord::RecordNotFound do |error|
    render json: { errors: "Object not found: #{error.message}" }, status: :not_found
  end
  
end
