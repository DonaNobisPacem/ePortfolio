class ProjectsController < ApplicationController
	before_filter :authenticate_user!

  	def index
  	end

  	def show
  		@project = Project.find params[:id]
  	end
  	
  	def new
  		@project = Project.new
  	end

  	def create
  		@project = Project.new(params[:project])

  		if @project.save
  			flash[:success] = "Project Successfully created!"
  		end
  		redirect_to root_url
  	end
end
