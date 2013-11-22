class SessionsController < ApplicationController 

	# def new
	# end

	def create
	# user = User.from_facebook(request.env['omniauth.auth'])		# 
		user = User.find_by_email(params[:email])
		if user
			if user.authenticate(params[:password])
				session[:id] = user.id
				redirect_to users_path
			else
				flash[:error] = ["Invalid email or password"]
				redirect_to new_user_path
			end
		else
			flash[:error] = ["Invalid email or password"]
			redirect_to new_user_path
		end

	end

	def destroy
		session[:id]= nil
		redirect_to root_url, :notice => "Logged out!"
	end

end