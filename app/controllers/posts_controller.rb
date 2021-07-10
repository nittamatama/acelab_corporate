class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  
  def index
    @posts = Post.search(params[:keyword]).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def show
    @comment = Comment.new
    @comments = @post.comments
  end

  def edit
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

end
