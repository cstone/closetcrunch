class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember_me])
      redirect_back_or_to root_path, success: 'Successfully logged in'
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, flash: { success: 'Successfully logged out' }
  end
end
