class UsersController < ApplicationController
  def list
    @user = User.all
  end

  def detail
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.user_name = params[:user][:user_name]

    if @user.save
      # redirect to "root"
      redirect_to root_path
    else
      render :new
    end
  end

  def delete
  end
end
