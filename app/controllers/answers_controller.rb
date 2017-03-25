class AnswersController < ApplicationController
  def index
   @scholarships = current_user.organization.scholarships
   sosoo
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
        answer = Answer.new(body: body[:text], application_id: body[:application_id], question_id: body[:question_id])
         answer.save
  
      end
  end
end
