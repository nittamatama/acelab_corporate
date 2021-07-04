class PostsController < ApplicationController
 
  def index
    @posts = Post.search(params[:keyword]).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

end
