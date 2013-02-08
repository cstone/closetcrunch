class UsersController < ApplicationController
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to root_path, flash: { success: 'Thanks for joining Closetcrunch' }
    else
      render :new
    end
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    if @user.update_attributes params[:user]
      redirect_to root_path, flash: { success: 'Your profile has been saved' }
    else
      render :edit
    end
  end

  def destroy
    user = find_user
    user.delete
    redirect_to root_path, flash: { success: 'Your account has been disabled' }
  end

  protected

  def find_user
    User.find params[:id]
  end
end
