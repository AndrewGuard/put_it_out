class UserMailer < ActionMailer::Base
  default from: "Winston.Thorman@gmail.com"

  def welcome_email(user)
  	@user = user
  	mail(to: @user.email, subject: 'Welcome to Put It Out')
  end

  def password_reset(user)
  	@user = user
  	@url = 'localhost:3000'
  	mail(to: @user.email, subject: "Password Reset")
	end

end
