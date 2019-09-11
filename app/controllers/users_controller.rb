class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'ようこそ、なりしきの世界へ'
      redirect_to @user
      # => "/users/#{@user.id}"
      # user_path(@user
      # user_path(@user.id)
    else
      #flash[:danga]
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name,:email,:coname, :password, :password_confirmation)
    end
end