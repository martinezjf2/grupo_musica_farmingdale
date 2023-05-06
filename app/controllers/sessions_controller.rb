class SessionsController < ApplicationController


    def new

    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to root_path, sucess: "You are Successfully Logged In"
        else 
            redirect_to '/login', danger: "User not found. Please Try Again"
        end
    end


    def destroy
        session.delete :user_id
        redirect_to "/", success: "You've successfully logged out. Hope to see you soon!"
    end

end
