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
  end

  def update
  end

  def destroy
  end
end
