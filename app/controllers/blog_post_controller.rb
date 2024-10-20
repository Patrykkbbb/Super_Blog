class BlogPostController < ApplicationController
    before_action :find_blog_post, only: [:show,:edit,:update,:destroy]
    before_action :authenticate_user!, except: [:index,:about]

    def index 
      @blog_post = BlogPost.sorted
      @pagy, @blog_post = pagy(BlogPost.all)
    end
    
    def show 
      @blog_post.views += 1 
      @blog_post.save
    end

    def about
    end

    def pending
      @blog_post = BlogPost.sorted
    end

    def new
      @blog_post = BlogPost.new
    end

    def create
      @blog_post = BlogPost.new(blog_post_params)
      if @blog_post.save
        flash.notice = "#{t 'blog_post.controller.create_success'}"
        redirect_to @blog_post
      else
        flash.alert = "#{t 'blog_post.controller.create_error'}"
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @blog_post.update(blog_post_params)
        flash.notice = "#{t 'blog_post.controller.update_success'}"
        redirect_to @blog_post
      else 
        flash.alert = "#{t 'blog_post.controller.update_error'}"
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      if @blog_post.destroy
        flash.notice = "#{t 'blog_post.controller.destroy_success'}"
        redirect_to root_path, status: :see_other
      else 
        flash.alert = "#{t 'blog_post.controller.destroy_error'}"
      end
    end 

    private
    def blog_post_params
      params.require(:blog_post).permit(:title, :content, :views, :user_id, :status, :post_image)
    end

    def find_blog_post
      begin
        @blog_post = BlogPost.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        flash.alert = "#{t 'blog_post.controller.find_error'}"
        redirect_to root_path
      end
    end

    def authenticate_user!
      redirect_to new_user_session_path, alert: "#{t 'blog_post.controller.auth_alert'}" unless user_signed_in?
    end

end