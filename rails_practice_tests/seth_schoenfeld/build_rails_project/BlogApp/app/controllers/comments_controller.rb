class CommentsController < ApplicationController

    def show
      @comment = Comment.find(params[:id])
      redirect_to blog_url( @comment[:comment][:blog_id]) 
    end

    def create 
      @comment = Comment.create(comment_params)

      if @comment.save 
        redirect_to blog_url(params[:comment][:blog_id])   
      else
        redirect_to blog_url(params[:comment][:blog_id])     
      end
    end

    def destroy 
      comment = Comment.find(params[:id])
      comment.destroy 
      redirect_to blog_url(comment[:blog_id]) 
    end

    private
    def comment_params
        params.require(:comment).permit(:body, :author_id, :blog_id)
    end
end