class HomeController < ApplicationController
  def index
	@myProjects = Project.where( :contributor => current_user.username ).paginate(page: params[:page], per_page: 10 )
  end
end
