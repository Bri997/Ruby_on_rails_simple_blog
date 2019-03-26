class CommentsController < ApplicationController
    http_basic_authenticate_with name: "Brian", password: "12345", only: [:destory]
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        redirect_to post_path(@post)
    end

    def destory
        @post = Post.find(params[:post_id])
        @comment = post.comment.find(params[:id])
        @comment.destory
        redirect_to post_path(@post)
    end
    private def comment_params
    params.require(:comment).permit(:username, :body)
    end 
end
