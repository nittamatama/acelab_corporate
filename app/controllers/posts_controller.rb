class PostsController < ApplicationController
  before_action :set_params, only: [:show, :edit]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    @post = Post.new
    tag_list = params[:post][:tag_name].split('nill')
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
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :image)
  end
  
  def set_params
    @post = Post.find(params[:id])
  end
end

