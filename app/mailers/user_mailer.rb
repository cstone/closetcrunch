class UserMailer < ActionMailer::Base
  default from: 'no-reply@closetcrunch.com'

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
end
