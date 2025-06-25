class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def require_admin
    redirect_to root_path, alert: "Access denied!" unless current_user&.admin?
  end
end
