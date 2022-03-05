class LikesController < ApplicationController
  before_action :find_post

  def create
    post = Post.find(params[:post_id])
    like = post.likes.new(user_id: current_user.id)

    respond_to do |format|
      format.html do
        if like.save
          flash[:notice] = 'Like was successfully added.'
        else
          flash[:alert] = 'Failed to like!'
        end
        redirect_to user_post_path(post.user.id, post.id)
      end
    end
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
