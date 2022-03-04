class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
    @current_user = current_user
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])

    if @post.save
      flash[:success] = 'Post was saved'
      redirect_to "/users/#{@post.user.id}/posts/"
    else
      render :new
    end
  end
end
