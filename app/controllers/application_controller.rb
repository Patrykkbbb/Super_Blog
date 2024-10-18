class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_query
  protected
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nickname, :first_name, :last_name, :email, :password, :avatar, :current_password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nickname, :first_name, :last_name, :email, :password, :avatar, :current_password)}
      end
  allow_browser versions: :modern

  def set_query
    @query = BlogPost.ransack(params[:q])
    @blog_post = @query.result(distinct: true)
  end

  include Pagy::Backend
end
