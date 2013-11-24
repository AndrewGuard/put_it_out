class PasswordResetsController < ApplicationController
  def new
  end

  def create
  	@user= User.find_by_email(params[:email])
  	@user.send_password_reset if @user
  	redirect_to root_url, flash[:notice] => "Email sent with reset password instructions."
  end

  def edit
  	@user = User.find_by_password_reset_token!(params[:id])
	end 

	def update
  	@user = User.find_by_password_reset_token!(params[:id])
		if @user.password_expires_after < 2.hours.ago
			redirect_to new_password_reset_path, flash[:notice] => "Password link has expired"
		elsif @user.update_attributes(params[:user])
			redirect_to root_url, flash[:notice] => "Password has been reset"
		else
			render :edit
		end
	end

end
