class DashboardsController < ApplicationController
  def student
    @applications =  current_user.applications 
  end
  def organization
    @scholarships = current_user.organization.scholarships
  end
  def update
    @application = Application.find_by(id: params[:id])
    @application.assign_attributes(completed: true)
    @application.save
    redirect_to "/applications/#{@application.id}"
  end
end
