class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit
    unless current_user == @user
      redirect_to user_path
    end
  end

  def update
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
