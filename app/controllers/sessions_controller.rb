class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])  && user.hidden != true && user.account_enabled
		      # Add condition here later - User account must be verified and enabled to signin
		      flash[:success] = 'Successfully logged in!'
		      sign_in user
		      redirect_back_or role_control_panel
		  elsif user && user.authenticate(params[:session][:password])  && user.hidden != true && !user.account_enabled  
		  	flash.now[:error] = 'Account not yet activated/approved. Please make sure you have verified this account so a system administrator can activate/approve it.'
		  	redirect_to root_url
		  else
		  	flash.now[:error] = 'Invalid email/password combination'
		  	redirect_to root_url
		  end
	end

	def destroy
		sign_out
	    redirect_to signin_url #root_url
	end
end
