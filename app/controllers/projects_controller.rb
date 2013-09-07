class ProjectsController < ApplicationController
	before_filter :authenticate_user!

  	def index
  	end

  	def show
      @user = current_user
  		@project = Project.find params[:id]
      @comments = ProjectComment.where( :project_id => @project.id ).paginate(page: params[:page], per_page: 10 )
  	end
  	
  	def new
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
