class QuestionsController < ApplicationController
  def index
    @scholarship = Scholarship.find_by(id: params[:scholarship_id])
  end
  def show
    @question = Question.find_by(id: params[:id])
  end
  
  def new
    @question = Question.new
  end
  def create
     @question = Question.create(
      title: params[:title],
      scholarship_id: params[:scholarship_id]
      )
    if @question.save
      flash[:success] = "Question Added"
      redirect_to "/questions/#{@question.id}"
    else
      flash[:danger] = "Question NOT Added"
      render :new
    end
  end
end
