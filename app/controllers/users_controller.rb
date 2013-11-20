class UsersController < ApplicationController 

	def new
		@user = User.new
	end

	def create
		user = User.create(params[:user])
		session[:id] = user.id
		redirect_to 'http://localhost:3000/users/new'
	end
end
