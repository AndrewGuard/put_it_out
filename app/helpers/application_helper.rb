module ApplicationHelper
	def current_user
		if session[:provider] == "facebook"
			@current_user ||= SocialMediaUser.find_by_id(session[:id])
		else
			@current_user ||= User.find_by_id(session[:id])
		end
	end
end
