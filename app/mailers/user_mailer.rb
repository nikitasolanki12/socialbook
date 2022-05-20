class UserMailer < ApplicationMailer

  default from: 'palabhi51640@gmail.com'

  def welcome_email(user)
    # @user = params[:user]
    @url  = 'http://localhost:3000/users/sign_in'    
    mail(to: user.email, subject: 'Welcome to My Awesome Site')
  end
end


#'http://example.com/login'