class UsersController < ApplicationController
  def index
    @user = Users.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(params[:user])
    
    if @user.save
      auto_login(@user)
      flash[:notice] = "Account created"
      redirect_to root_path
    else
      render :new
    end
  end
end

