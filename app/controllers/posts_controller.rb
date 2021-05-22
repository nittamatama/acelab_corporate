class PostsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    tag_list = params[:post][:tag_ids].split(",")
    if @post.save
      @post.save_tags(tag_list)
      flash[:success] = '投稿しました'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @likes_count = @post.likes.count
  end

  def edit
    @tag_list = @post.tags.pluck(:tag_name).split(',')
  end

  def update
    post = Post.find(params[:id])
    post.save
    tag_list = params[:post][:tag_ids].split(',')
    if post.
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :image)
  end
  
  def set_params
    @post = Post.find(params[:id])
  end
end

