class ApplicationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
 
  def show
    @application = Application.find_by(id:params[:id])
    @scholarship = @application.scholarship
    
  end
  def submission
    @scholarship = Scholarship.find_by(id: params[:scholarship_id])
  end
  def new
    @application = Application.new
    @scholarship = Scholarship.find_by(id: params[:scholarship_id])
  end
  def create
     @application = Application.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      user_id: params[:user_id],
      scholarship_id: params[:scholarship_id],
      personal_statement: params[:personal_statement]
      )

    if @application.save
   
      flash[:success] = "Application Created"
      redirect_to "/applications/#{@application.id}"
    else
      flash[:danger] = "Application NOT Created"
      render :new
    end
  end
  def download
    send_file '@application.personal_statement.url', :type=>"application/pdf", :x_sendfile=>true
  end
  
end
