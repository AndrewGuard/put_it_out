class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://dontsmoke.com/login'
  	mail(to: @user.email, subject: 'Welcome to Put It Out')
  end

  def password_reset_email(user)
  end
  
end
