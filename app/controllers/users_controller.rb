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
		  @errors = user.errors.full_messages
		  flash[:error] = "Account not created and here is why!"
		  @user = User.new
	  	  render :new 
		end
		
	end
end
