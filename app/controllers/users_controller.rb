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
    @user = load_user
  end

  def update
    @user = load_user
    if @user.update_attributes params[:user]
      redirect_to root_path, flash: { success: 'Your profile has been saved' }
    else
      render :edit
    end
  end

  def destroy
    user = load_user
    user.delete
    redirect_to root_path, flash: { success: 'Your account has been disabled' }
  end

  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      redirect_to root_path, flash: { success: 'You\'ve successfully activated your account' }
    else
      not_authenticated
    end
  end

  protected

  def load_user
    User.find params[:id]
  end
end
