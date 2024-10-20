class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_blog_post_comment, only: [:destroy,]

    def create 
      @blog_post = BlogPost.find(params[:blog_post_id])
      @comment = @blog_post.comments.create(comment_params)
      if @comment.save
        redirect_to blog_post_path(@blog_post), notice: "#{t "comments.controller.add_notice"}"
      else 
        redirect_to blog_post_path(@blog_post), alert: "#{t "comments.controller.add_alert"}"
      end
    end

    def destroy 
      if @comment.destroy
        redirect_to blog_post_path(@blog_post), notice: "#{t "comments.controller.destroy_notice"}"
      else 
        redirect_to blog_post_path(@blog_post), alert: "#{t "comments.controller.destroy_alert"}"
      end
    end


    def find_blog_post_comment
      @blog_post = BlogPost.find(params[:blog_post_id])
      @comment = @blog_post.comments.find(params[:id])
    end


    private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id)
    end
end