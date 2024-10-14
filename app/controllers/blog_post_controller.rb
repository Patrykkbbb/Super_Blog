class BlogPostController < ApplicationController
    before_action :find_blog_post, only: [:show]
    def index 
      @blog_post = BlogPost.all
    end
    
    def show 
    end

    def find_blog_post
      @blog_post = BlogPost.find(params[:id])
    end
end