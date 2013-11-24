module ApplicationHelper
	def current_user
		if session[:provider] == "facebook"
			@current_user ||= SocialMediaUser.find_by_id(session[:id])
		else
			@current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
		end
	end
end
