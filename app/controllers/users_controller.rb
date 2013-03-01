class UsersController < ApplicationController
  def new
    if signed_in?
      flash.now[:success] = "You are logged in"
      redirect_to current_user
    end
  	@user = User.new
  end

  def show
    if current_user
      @user = current_user
    else
      @user = User.find(params[:id])
    end
    @events = @user.events.paginate(page: params[:page])
  end

  def create
    @user = User.new(params[:user])
  	if @user.save
      sign_in @user
  		flash[:success] = "Welcome to the Eventr! Here you can create your own events"
  		redirect_to @user
  	else
  		render 'new'
  	end
  	
  end
end
