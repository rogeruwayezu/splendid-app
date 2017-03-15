class Api::V1::QuestionsController < ApplicationController
  def new

  end
  def create
     @question = Question.create(
      title: params[:title],
      scholarship_id: params[:scholarship_id]
      )
    if @question.save
     render :show
    else

    end
  end
end
