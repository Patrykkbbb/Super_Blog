class UserController < ApplicationController
    before_action :authenticate_user!

    def index
      @user = User.all
      @pagy, @user = pagy(User.all)
    end

    def show 
      @user = User.find(params[:id])
      @blog_posts = @user.blog_posts
      @pagy, @blog_posts = pagy(@user.blog_posts)
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to user_list_path
    end
end