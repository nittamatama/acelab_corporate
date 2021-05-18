class LikesController < ApplicationController
  before_action :set_post
  
  def create
    @post.likes.find_by(ip: request.remote_ip)
    if @alreadylike
      redirect_back(fallback_location: root_path)
      flash[:notice] = "すでにいいねしています"
    else
      @post.likes.create(ip: request.remote_ip)
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @alreadylike = Like.find_by(ip: request.remote_ip, post_id: params[:post_id])
    if @alreadylike.destroy
      redirect_back(fallback_location: root_path)
      flash[:notice] = "いいね削除しました"
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
