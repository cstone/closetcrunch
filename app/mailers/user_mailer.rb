class UserMailer < ActionMailer::Base
  default from: 'noreply@closetcrunch.com'
  layout 'email'

  def activation_needed_email user
    @user = user
    @url = "http://closetcrunch.com/users/#{user.activation_token}/activate"

    mail to: user.email
  end

  def activation_success_email user
    @user = user
    @url = "http://closetcrunch.com/login"

    mail to: user.email
  end

  def reset_password_email user
    @user = user
    @url = "http://closetcrunch.com/password_resets/#{user.reset_password_token}/edit"

    mail to: user.email
  end
end
