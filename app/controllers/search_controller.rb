class SearchController < ApplicationController 
    before_action :authenticate_user!
    
    def index
      @query = BlogPost.ransack(params[:q])
      @blog_post = @query.result(distinct: true)
    end
end