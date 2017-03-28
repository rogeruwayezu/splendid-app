class AnswersController < ApplicationController
   before_action :authenticate_organization!, only: [:new, :create, :edit, :update, :destroy, :index]
  def index
   @scholarships = current_user.organization.scholarships
   
  end

  def new
     @answer = Answer.new
    @scholarship = Scholarship.find_by(id: params[:scholarship_id])
    @application = current_user.applications
   
  end
  def create
    @scholarship = Scholarship.find_by(id: params[:scholarship_id])
      bodies = params[:bodies]
      bodies.each do |body|
        @answer = Answer.new(body: body[:text], application_id: body[:application_id], question_id: body[:question_id])
        @answer.save
      end
      @application = Application.find_by(id: params[:application_id])
     redirect_to "/applications/complete?application_id=#{@application.id}"
  end
end
