class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@user = current_user
  		@user_profile = UserProfile.where( :user_id => @user.id ).first
		#@projects = Project.where( :contributor => @user_profile.name ).paginate(page: params[:page], per_page: 10 )
		@projects = Project.where("contributor LIKE ?", "%#{@user_profile.fullname}%").paginate(page: params[:page], per_page: 10 )
	else
		@disable_nav = true
	end

  end
end
