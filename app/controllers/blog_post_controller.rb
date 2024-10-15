class BlogPostController < ApplicationController
    before_action :find_blog_post, only: [:show,:edit,:update,:destroy]
    def index 
      @blog_post = BlogPost.sorted
    end
    
    def show 
      @blog_post.views += 1 
      @blog_post.save
    end

    def new
      @blog_post = BlogPost.new
    end

    def create
      @blog_post = BlogPost.new(blog_post_params)
      if @blog_post.save
        flash.notice = "Pomyslnie utworzono #{@blog_post.title}!"
        redirect_to @blog_post
      else
        flash.alert = "Blad podczas tworzenia posta"
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @blog_post.update(blog_post_params)
        flash.notice = "Pomyslnie zmodyfikowano #{@blog_post.title}!"
        redirect_to @blog_post
      else 
        flash.alert = "Blad podczas modyfikowania tresci"
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      if @blog_post.destroy
        flash.notice = "Pomyslnie usunieto #{@blog_post.title}!"
        redirect_to root_path, status: :see_other
      else 
        flash.alert = "Nie mozna usunac #{@blog_post.title}"
      end
    end 

    private
    def blog_post_params
      params.require(:blog_post).permit(:title, :content, :views)
    end

    def find_blog_post
      begin
        @blog_post = BlogPost.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        flash.alert = "BLAD: Nie znaleziono takiego adresu!"
        redirect_to root_path
      end
    end

    
end