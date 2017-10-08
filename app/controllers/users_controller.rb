class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_user?, :only => [:index]
  before_action :correct_user?, :except => [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(
        params.require(:user).permit(:bitcoin_de_api_key))
      @user.save
      render :show
    else

    end
  end

end
