class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favor(micropost)
    flash[:success]='お気に入りに登録しました。'
    redirect_to :back
  end

  def destroy
    micropost=Micropost.find(params[:micropost_id])
    current_user.unfavor(micropost)
    flash[:success]='お気に入りを解除しました。'
    redirect_to :back
  end
end
