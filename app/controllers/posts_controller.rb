class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
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
    tag_list = params[:post][:tag_ids].split(',')
    if post.update_attributes(post_params)
      post.save_tags(tag_list)
      flash[:success] = '投稿を編集しました'
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :image)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
end

