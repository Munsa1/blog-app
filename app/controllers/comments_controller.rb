class CommentsController < ApplicationController
  load_and_authorize_resource

  def create
    post = Post.find(params[:post_id])
    comment = post.comments.new(text: comment_params[:text], user: current_user)

    respond_to do |format|
      format.html do
        if comment.save
          redirect_to user_post_path(post.user.id, post.id), notice: 'Comment was successfully created.'
        else
          flash[:alert] = 'Failed to add comment!'
          redirect_to user_post_path(post.user.id, post.id)
        end
      end
    end
  end

  def destroy
    comment = Comment.find params[:id]
    post = comment.post

    respond_to do |format|
      if comment.destroy
        format.html { redirect_to user_post_path(post.user.id, post.id), notice: 'Comment deleted!' }
      else
        format.html { redirect_to user_post_path(post.user.id, post.id), alert: 'Failed to delete comment!' }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
