class UsersController < ApplicationController
	# FACEBOOK USER TEST INFO
	#jvvchapman@gmail.com
	#p@ssword

	def index
		if session[:provider] == "facebook"
			@user = SocialMediaUser.find(session[:id])
		else
			@user = User.find(session[:id])
		end
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

	def edit
			@user = User.find(session[:id])
			if request.xhr?
				render :edit, layout: false
			end
	end

	def update
		 @user = User.find(session[:id])
		 if @user.update_attributes(params[:user])
      flash[:success] = "Your info has been updated!"
      redirect_to users_path(@user)
     else
      render :edit
     end
	end

end
