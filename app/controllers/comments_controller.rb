class CommentsController < ApplicationController

    before_action :set_post

    def index 
        @comments = Comment.all
        render json: @comments
    end

    def create 
        @comment = @post.comments.new(comment_params)
        if @account.update_balance(@comment)
            @comment.save
            render json: @comment
        else
            render json: {error: 'Error creating comment'}
        end
    end

    def show 
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def destroy 
        # @comment = Comment.find(params[:id])
        # @comment.destroy
    end

    private

    def set_post
        @post = Post.find(params[:post_id])
    end

    def comment_params 
        params.require(:comment).permit(:post_id, :username, :content, :likes, :date, :kind)
    end
end
