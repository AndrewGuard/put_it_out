class UsersController < ApplicationController 
	include ApplicationHelper
	include TimerHelper

	def index
		if session[:provider] == "facebook"
			@user = SocialMediaUser.find_by_auth_token(cookies[:auth_token])
		else
			@user = current_user
		end
	@timer = Timer.new
		if @last_cig = Timer.find_by_user_id(@user.id)
	 		@time_in_seconds = current_timer(@user.id)
		end
	end
	

	def show
		@user = current_user
	end

	def new
		@user = User.new
	end

	def create
		user = User.create(params[:user])
		if user.id
			cookies[:auth_token] = user.auth_token
			UserMailer.welcome_email(user).deliver
			redirect_to users_path
		else
			flash[:error] = user.errors.full_messages
			@user = User.new
			render :new
		end
	end

	def edit
		@user = current_user		
		if request.xhr?
			render :edit, layout: false
		end
	end

	def update
		@user = current_user
		if @user.update_attributes(params[:user])
			flash[:success] = "Your info has been updated!"
			redirect_to users_path(@user)
		else
			render :edit
		end
	end

end
