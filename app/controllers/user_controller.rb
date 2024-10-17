class UserController < ApplicationController
    before_action :authenticate_user!

    def index
      @user = User.all
    end

    def show 
      @user = User.find(params[:id])
      @blog_posts = @user.blog_posts
    end
end