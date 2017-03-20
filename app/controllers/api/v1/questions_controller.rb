class Api::V1::QuestionsController < ApplicationController
  def new

  end
  def create
    @question = Question.new(
      title: params[:title],
      scholarship_id: params[:scholarship_id]
      )
    @question.save
     render :show
  end
  def update
    @question = Question.find_by(id: params[:id])
    @question.title = params[:title]
   
    if @question.save
       render :show
    else 
      puts "errors messages"
      p @question.errors.full_messages
    end

  end
  def destroy
    @question = Question.find_by(id: params[:id])
    if @question.destroy
          render json: {message: "question needed"}
    else
      puts "errors messages"
      p @question.errors.full_messages
    end
  end
end
    
      

