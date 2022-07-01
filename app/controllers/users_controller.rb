class UsersController < ApplicationController

  def index
    @users = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:name, :image, :introduction))
      redirect_to :top_page
    else
      render "edit"
    end
  end
end
