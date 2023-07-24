class ApplicationController < ActionController::Base
    before_action :set_locale
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

    def switch_locale
        locale = params[:locale].to_sym
        if I18n.available_locales.include?(locale)
          session[:locale] = locale
        end
        redirect_back(fallback_location: root_path)
      end

      private

  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
  end


end
