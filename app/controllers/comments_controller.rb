class CommentsController < ApplicationController

    before_action :set_post

    def index 
        @comments = Comment.all
        render json: @post.comments
    end

    def create 
        @comment = @post.comments.new(comment_params)
        @post.update_likes(@comment)
        @comment.save
        render json: @post
    end

    def show 
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def destroy 
        @comment = Comment.find(params["id"])
        @post = Post.find(@comment.post_id)
        @post.update_likes_on_delete(@comment)
        @comment.destroy
        render json: @post
    end

    private

    def set_post
        @post = Post.find(params[:post_id])
    end

    def comment_params 
        params.require(:comment).permit(:username, :post_id, :content, :likes, :date, :kind)
    end
end
