class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.search(params[:keyword]).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    current_admin.posts.create(post_params)
    redirect_to posts_path
  end

  def show
    @comment = Comment.new
    @comments = @post.comments
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:title, :content,:image, :genre_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    unless admin_signed_in?
      redirect_to action: :index
    end
  end

end
