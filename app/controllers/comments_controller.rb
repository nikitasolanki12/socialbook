class CommentsController < ApplicationController
  def new
    @posts = User.find(params[:id]).posts 
    @comment = Comment.new

  end

   def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params.merge(user_id: current_user.id))
    @comment.save
    redirect_to posts_path(@post)  
  end

   private
    def comment_params
      params.require(:comment).permit(:post_id, :user_id, :description)
    end
end
