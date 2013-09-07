class HomeController < ApplicationController
	before_filter :authenticate_user!
  def index
  	if user_signed_in?
  		@user = current_user
  		@user_profile = UserProfile.where( :user_id => @user.id ).first
		@projects = Project.where( :contributor => current_user.username ).paginate(page: params[:page], per_page: 10 )
	end
  end
end
