class PostsController < ApplicationController
    def index 
        @posts = Post.all
        render json: @posts
    end

    def create 
        @post = Post.new(post_params)
        if @post.save
            render json: @post
        else
            render json: {error: 'Error creating post'}
        end
    end

    def show 
        @post = Post.find(params[:id])
        render json: @post
    end

    def update

    end

    private

    def post_params 
        params.require(:post).permit(:username, :content, :likes, :date)
    end
end
