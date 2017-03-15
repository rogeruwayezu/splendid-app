class ApplicationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
 
  def show
    @application = Application.find_by(id:params[:id])
    
  end
  def new
    @application = Application.new
    @scholarship = Scholarship.find_by(id: params[:scholarship_id])
  end
  def create
     @application = Application.create(
      title: params[:title],
      description: params[:description],
      user_id: params[:user_id],
      scholarship_id: params[:scholarship_id],
      )
    if @application.save
      flash[:success] = "Application Created"
      redirect_to "/applications/#{@application.id}"
    else
      flash[:danger] = "Application NOT Created"
      render :new
    end
  end
  
end
