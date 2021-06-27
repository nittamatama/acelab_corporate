class PostsController < ApplicationController
 
  def index
    @posts = Post.all.order("created_at DESC")
    @posts = Post.search(params[:keyword])
  end

  def new
    @post = Post.new
  end

end
