class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "投稿が完了"
      redirect_to root_path
    else
      @feed_items = current_user
      render 'basic_pages/home'
    end
  end

  def destroy
    @micropsot.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to request.referrer || root_path
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_path @micropost.nil?
    end
end