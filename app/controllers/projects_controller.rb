class ProjectsController < ApplicationController
  def create
  	# creates a new project object by passing in the permitted parameters
  	# through the project_parameters method, and then 
  	# assigns the project to the current_user
  	@project = Project.create(project_parameters.merge(user: current_user))

  	if @project.save
  		flash.notice = "Project added!"
  		redirect_to dashboard_path
  	else
  		flash.alert = "Creation Aborted!"
  		redirect_to dashboard_path
  	end
  end

  def index
  end

  def show
  end

  private

  def project_parameters
  	params.require(:project).permit(:name)
  end
end
