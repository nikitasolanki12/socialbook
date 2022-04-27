class PostsController < ApplicationController



  def index

   @post = Posts.all
      
  end

    def new
      @post = Posts.new
    end

    def create
      @post = Posts.new(post_params)
      if @post.save
        redirect_to @post
      else
        render 'new'
      end
    end

    def show
      @post = Posts.find(params[:id])
    end

    def find_post
      @post = Posts.find(params[:id])
    end

    def edit
      @post = Posts.find(params[:id])
    end


    def destroy
      @post = Posts.find(params[:id])
      @post.destroy

      redirect_to posts_path
    end

    def update
      @post = Posts.find(params[:id])
      if @post.update(post_params)
        redirect_to @post

      else
        render 'edit'
      end
    end
    
    private
    def post_params
      params.require(:post).permit(:user_id, :description)
    end
 
end
