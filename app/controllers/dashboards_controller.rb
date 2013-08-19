class DashboardsController < ApplicationController
  def show
  	@project = Project.new
  	@my_projects = current_user.projects.all
  	@all_projects = Project.all
  end
end
