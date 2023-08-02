class UsersController < ApplicationController


    def show
        @current_user = current_user
    end

    def edit
        @current_user = current_user
    end

    def update
        @current_user = current_user
        if @current_user.update(user_params)
            redirect_to user_path(@current_user), success: "Profile Updated Successfully"
        else
            redirect_to edit_user_path(@current_user), danger: "An error occurred while updating the profile"
        end
    end


    def destroy
        @current_user = current_user

        if @current_user.destroy
            flash[:success] = "Your account has been deleted successfully."
            redirect_to root_path
        else
            flash[:error] = "An error occurred while deleting your account."
            redirect_back(fallback_location: edit_user_path(@current_user))
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :admin_code, :first_name, :last_name, :email)
    end


end