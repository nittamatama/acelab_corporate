class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def show
    @post = Post.find(params[:id])
    @likes_count = @post.likes.count
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :image)
  end

end
