class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def like
    @post = Post.find(params[:format])
    @post.likes.create(user_id: current_user.id)
    redirect_to posts_index_path
  end

  def like_delete
    @like = Like.find_by(likeable_id:  params[:format])
    @like.destroy
    redirect_to posts_index_path
  end

  def create
    current_user.posts.create(post_params)
    redirect_to posts_index_path
  end

  private

  def post_params
    params.require(:post).permit(:post_name, images: [])
  end

end
