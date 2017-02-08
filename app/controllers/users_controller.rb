class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(user_params.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    # login(@user)
      redirect_to user_path @user
  end



  def edit
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    # render :edit
  end

  def update
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    # Insert flash message errors
    redirect_to edit_user_path(@user)
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :course, :social_url)
  end

end
