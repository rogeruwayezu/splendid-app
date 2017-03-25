class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end
  def show
    @organization = Organization.find_by(id:params[:id])
  end
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(title: params[:title], email: params[:email], user_id: params[:user_id])
     if @organization.save
      flash[:success] = "Organization Created"
      redirect_to "/organizations/#{@organization.id}"
    else
      flash[:danger] = "Organization NOT Created"
      render :new
    end
  end
  def edit
    @organization = Organization.find_by(id: params[:id])
  end
  def update
    @organization = Organization.find_by(id: params[:id])
    @organization.assign_attributes(title: params[:title], email: params[:email], user_id: params[:user_id]
    )
    if @organization.save
      flash[:success] = "organization Updated"  
      redirect_to "/organizations/#{@organization.id}"
    else
      render :edit
    end

  end
  def destroy
    @organization = Organization.find_by(id: params[:id])
    @organization.destroy
    flash[:warning] = "organization deleted"
    redirect_to "/organizations"
  end
end
