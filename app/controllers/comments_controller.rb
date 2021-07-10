class CommentsController < ApplicationController
  def create
   comment = Comment.create(comment_params)
   redirect_to "/posts/#{comment.post.id}"
  end


  private
  def comment_params
    params.require(:comment).permit(:text, :user_name).merge(post_id: params[:post_id])
  end
end
