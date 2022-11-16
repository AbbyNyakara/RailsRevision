class CommentsController < ApplicationController

  # You need to find the post you are creating the comment for
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to posts_path
    
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end

