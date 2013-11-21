require 'debugger'
class UsersController < ApplicationController 

	def new
		@user = User.new
	end

	def create
		user = User.create(params[:user])
	
		if user.id
		  session[:id] = user.id
		  redirect_to posts_url(@posts)
		else
		  flash[:error] = user.errors.full_messages
		  @user = User.new
	  	  render :new 
		end
		
	end
end
