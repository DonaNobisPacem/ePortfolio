class SearchController < ApplicationController
  def index
  	@user = current_user
  	@query = params[:search]
  	@projects_list = Project.search params[:search], :page => params[:page], :per_page => 10 
  	@users_list = User.search params[:search], :page => params[:page], :per_page => 10 
  	#@users_list = User.paginate(page: params[:page], per_page: 10 )
  end
end
