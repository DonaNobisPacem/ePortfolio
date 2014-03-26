class UsersController < ApplicationController

	autocomplete :project, :title, :full => true

	def new
		@user = User.new
	end

	def index
		@notifications = PublicActivity::Activity.order('created_at desc')
		@user = current_user
		@users = User.paginate(page: params[:page], per_page: 10 )
	end

	def show
		@notifications = PublicActivity::Activity.order('created_at desc')
		@current_user = current_user
  		@user = User.find params[:id]
  		@user_profile = UserProfile.where( :user_id => @user.id ).first
  		@friends = @user.friends
  		@projects = Project.where( :creator => @user.id ).paginate(page: params[:page], per_page: 10 )
  		@featured = Project.where( :id => @user_profile.featured_project ).first
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

	def get_autocomplete_items(parameters)
		@user = current_user
      items = Project.select("title, id").where(["title LIKE ? AND creator = ?", "%#{parameters[:term]}%", @user.id ])
    end
end
