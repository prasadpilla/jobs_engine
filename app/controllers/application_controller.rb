class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  # protect_from_forgery with: :null_session

  before_action :configure_permitted_parameters, if: :devise_controller?
	
	def respond_with_errors(object)
  		render json: {status: 'error',errors: object.errors.messages,full_messages:object.errors.full_messages}, status: :unprocessable_entity
	end

	protected

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:mobile,:gender,:preferred_language])
	  end

end
