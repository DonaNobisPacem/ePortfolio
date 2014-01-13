class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def index
		@user = current_user
		@users = User.paginate(page: params[:page], per_page: 10 )
	end

	def show
		@current_user = current_user
  		@user = User.find params[:id]
  		@user_profile = UserProfile.where( :user_id => @user.id ).first
  		@friends = @user.friends
  	end
	
	def create
		@user = User.new(params[:user])

		if @user.save
			flash[:notice] = "yay"
			redirect_to root_url, :notice => "Signed-up successfully!"
		else
			render 'new'
		end
	end
end
