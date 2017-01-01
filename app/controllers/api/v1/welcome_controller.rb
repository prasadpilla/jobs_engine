class Api::V1::WelcomeController < ApplicationController
	before_action :authenticate_user!	

	def index
		render json: { message:"Login successful!" }, status: :ok
	end

	def custom_error
		user = User.new
		user.save
		respond_with_errors(user)
	end

end