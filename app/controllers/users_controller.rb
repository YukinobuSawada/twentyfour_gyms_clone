class UsersController < ApplicationController
  def show
  	@user = current_user
  end

  def edit
  end

  def update
  end

  def top
    @user = current_user
  end

  private
  def user_params
  	params.require(:user).permit(:name,:email)
  end
end
