module ApplicationHelper
	def current_user
		if session[:provider] == "facebook"
			@current_user ||= SocialMediaUser.find_by_id(session[:id])
		elsif session[:provider] == "regular_user"
			@current_user ||= User.find_by_id(session[:id])
		end
	end
end
