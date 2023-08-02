class SessionsController < ApplicationController


    def new

    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to root_path, success: "You are Successfully Logged In"
        else 
            redirect_to '/login', danger: "No podimos encontrar tu cuenta, Por Favor intentar de nuevo."
        end
    end


    def destroy
        session.delete :user_id
        redirect_to "/", success: "You've successfully logged out. Hope to see you soon!"
    end

    def signup
        @user = User.new
      end
    
      def create_user
        @user = User.new(user_params)
        admin_code = params[:user][:admin_code]
    
        if admin_code == ENV['ADMIN_CODE']
          @user.admin_code = admin_code
    
          if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, success: "Bienvenidos! Su cuenta hacido creado con exito!"
          else
            redirect_to signup_path, danger: "Falta informaccion o informaccion incorrecta. Por favor intentar de nuevo."
          end
        else
            redirect_to signup_path, danger: "Falta informaccion o informaccion incorrecta. Por favor intentar de nuevo."
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :admin_code, :first_name, :last_name, :email)
      end

end
