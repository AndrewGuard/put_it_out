class UsersController < ApplicationController 

	def index
		if session[:provider]
			@user = SocialMediaUser.find(session[:id])
		else
			@user = User.find(session[:id])
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		user = User.create(params[:user])
		if user.id
		  session[:id] = user.id
		  redirect_to users_path
		else
		  flash[:error] = user.errors.full_messages
		  @user = User.new
	  	  render :new 
		end
	end


end
