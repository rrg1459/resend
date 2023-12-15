class UserNotifierMailer < ApplicationMailer
  # default :from => 'aolivares@adventech-logistica.com'
  default :from => 'SCTP <sfa@assistpro-adl.com>'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end


  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Hello from Resend UserNotifierMailer')
  end


end
