class BlogPostController < ApplicationController
    before_action :find_blog_post, only: [:show,:edit,:update,:destroy]
    def index 
      @blog_post = BlogPost.all
    end
    
    def show 
    end

    def new
      @blog_post = BlogPost.new
    end

    def create
      @blog_post = BlogPost.new(blog_post_params)
      if @blog_post.save
        redirect_to @blog_post
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @blog_post.update(blog_post_params)
        redirect_to @blog_post
      else 
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      if @blog_post.destroy
      redirect_to root_path, status: :see_other
    end

    private
    def blog_post_params
      params.require(:blog_post).permit(:title, :content)
    end

    def find_blog_post
      begin
        @blog_post = BlogPost.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        redirect_to '/404'
      end
    end

    
end