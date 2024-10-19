class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_blog_post_comment, only: [:destroy,]

    def create 
      @blog_post = BlogPost.find(params[:blog_post_id])
      @comment = @blog_post.comments.create(comment_params)
      if @comment.save
        redirect_to blog_post_path(@blog_post), notice: "Dodano komentarz"
      else 
        redirect_to blog_post_path(@blog_post), alert: "Nie mozna dodac komentarza"
      end
    end

    def destroy 
      if @comment.destroy
        redirect_to blog_post_path(@blog_post), notice: "Komentarz zostal usuniety"
      else 
        redirect_to blog_post_path(@blog_post), alert: "Nie mozna usunac komentarza"
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