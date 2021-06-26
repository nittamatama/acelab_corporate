class PostsController < ApplicationController
 
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def search
    @posts = Post.search(params[:keyword])
  end

end
