class UsersController < ApplicationController
  def show
    @user = User.find_by(params[:id])
    @title = @user.name
  end
  def new
    @user = User.new
    @title = "Sign up"
  end
  def create
    @user = User.new(params[:user])
    if @user.save
    # Handle a successful save.
    else
    @title = "Sign up"
    render 'new'
    end
  end
end