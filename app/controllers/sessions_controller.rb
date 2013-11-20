class SessionsController < ApplicationController 

	def create
		user = params[:session][:email]
		if user
			if user.authenticate
			session[:id] = user.id
			redirect_to user_path(user)
		end
		flash[:error] = "You entered the wrong password, buddy"

		else
			flash[:error] = "email is not found in our system"
		end
	end

	def logout
	end

end