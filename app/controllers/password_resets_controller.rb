class PasswordResetsController < ApplicationController
  skip_before_filter :require_login

  def new
  end

  def create
    @user = User.find_by_email params[:email]
    @user.deliver_reset_password_instructions! if @user
    redirect_to root_path, flash: { notice: 'Reset instructions have been sent to your email' }
  end

  def edit
    @user = User.load_from_reset_password_token params[:id]
    @token = params[:id]
    not_authenticated unless @user
  end

  def update
    @token = params[:token]
    @user = User.load_from_reset_password_token params[:token]
    not_authenticated unless @user

    if @user.change_password!(params[:user][:password])
      redirect_to root_path, flash: { notice: 'Your password was updated successfully' }
    else
      render :edit
    end
  end
end
