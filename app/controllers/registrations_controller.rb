class RegistrationsController < Devise::RegistrationsController
    
  def create
    build_resource(sign_up_params)

    if resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      redirect_to root_path
    end
  end
  
    def update
      
      account_update_params = params[:user]
      if account_update_params[:password].blank?
        account_update_params.delete("password")
        account_update_params.delete("password_confirmation")
      end
      @user = User.find(current_user.id)
      if @user.update_attributes(account_update_params)
        set_flash_message :notice, :updated
        # Sign in the user bypassing validation in case his password changed
        sign_in @user, :bypass => true
        redirect_to user_path(@user)
      else
        render "edit"
      end
    end

    private

    # check if we need password to update user data
    # ie if password or email was changed
    # extend this as needed
    def needs_password?(user, params)
      user.email != params[:user][:email] ||
        params[:user][:password].present?
    end


end 