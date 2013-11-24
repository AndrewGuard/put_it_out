class SessionsController < ApplicationController 

	def new
	end

	def create
		if request.env['omniauth.auth']
			user = SocialMediaUser.from_facebook(request.env['omniauth.auth'])
			cookies[:auth_token] = user.auth_token
			session[:provider] = user.provider	
			redirect_to users_path
		else
			user = User.find_by_email(params[:email])
			if user
				if user.authenticate(params[:password])
					if params[:remember_me]
					cookies.permanent[:auth_token] = user.auth_token
					else
					cookies[:auth_token] = user.auth_token
					session[:provider] = "regular_user"
					end
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

	end

	def destroy
		cookies.delete(:auth_token)
		session[:provider] = nil
		redirect_to root_url
	end

end