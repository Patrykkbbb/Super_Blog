class Admin::DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_only
    
    def index 
    end

    private 
    def admin_only
      redirect_to root_path, alert: "Nie masz uprawnien"
    end

end
