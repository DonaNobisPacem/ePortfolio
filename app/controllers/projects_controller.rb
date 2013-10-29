class ProjectsController < ApplicationController
	before_filter :authenticate_user!

  	def index
      @user = current_user
      if params[:tag]
        @projects = Project.tagged_with( params[:tag] ).paginate(page: params[:page], per_page: 10 )
      elsif params[:search]
        flash[:notice] = "Search"
        @projects = ThinkingSphinx.search params[:search], :page => params[:page], :per_page => 10 
      else
        @projects = Project.paginate(page: params[:page], per_page: 10 )
      end
  	end

  	def show
      @user = current_user
  		@project = Project.find params[:id]
      @comments = ProjectComment.where( :project_id => @project.id ).paginate(page: params[:page], per_page: 10 )
  	end
  	
  	def new
      @user = current_user
  		@project = Project.new
  	end

  	def create
  		@project = Project.new(params[:project])

  		if @project.save
  			flash[:notice] = "Project Successfully created!"
  		end
  		redirect_to root_url
  	end

    def update
      @project = Project.find params[:id]
      if @project.update_attributes params[:project]
        redirect_to project_path, :notice => "Comment Added!"
      end
    end
end
