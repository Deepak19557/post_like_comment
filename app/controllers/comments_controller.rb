class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @post = Post.find(params[:format].to_i)
    @comment = Comment.new
  end

  def create
    Comment.create(comment_params)
    redirect_to posts_index_path
  end

  def like
    @comment =  Comment.find(params[:format])
    @comment.likes.create(user_id: current_user.id)
    redirect_to posts_index_path
  end

  def like_delete
    @like = Like.find_by(likeable_id:  params[:format])
    @like.destroy
    redirect_to posts_index_path
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_name, :post_id)
  end

end
