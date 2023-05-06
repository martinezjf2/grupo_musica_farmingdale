class ApplicationController < ActionController::Base

    add_flash_types :danger, :info, :warning, :success
    helper_method :current_user

    def current_user
        User.find_by(id: session[:user_id])
    end

    def require_login
        if current_user
            current_user
        else
            redirect_to "/"
        end
    end


end
