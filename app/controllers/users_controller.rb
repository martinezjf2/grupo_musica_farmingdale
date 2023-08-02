class UsersController < ApplicationController


    def show
        
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
      # Deletion successful, show success message and redirect to a relevant page
      flash[:success] = "Your account has been deleted successfully."
      redirect_to root_path
    else
      # Deletion failed, show error message and redirect back to the edit page (or any other page)
      flash[:error] = "An error occurred while deleting your account."
      redirect_back(fallback_location: edit_user_path(@current_user))
    end
        
    end


    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :admin_code, :first_name, :last_name, :email)
    end



    # add email attribute to the user so if the user forgets the password a link can be sent to their email


end