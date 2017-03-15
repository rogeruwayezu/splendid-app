class ScholarshipsController < ApplicationController
  before_action :authenticate_organization!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @scholarships = Scholarship.all 
  end
  def show
    @scholarship = Scholarship.find_by(id:params[:id])
    @question = Scholarship.find_by(id:params[:id]).questions.first
    

  end
  def new
    @organizations = Organization.all
    @scholarship = Scholarship.new
  end
  def create
     @scholarship = Scholarship.new(
      title: params[:title],
      summary: params[:summary],
      full_description: params[:full_description],
      organization_id: params[:organization_id],
      course_level: params[:course_level],
      study_subjects: params[:study_subjects],
      number_of_awards: params[:number_of_awards],
      covered_expenses: params[:covered_expenses],
      elegibility: params[:elegibility],
      how_to_apply: params[:how_to_apply],
      deadline: params[:deadline]
      )
    if @scholarship.save
      flash[:success] = "Scholarship Created"
      redirect_to "/applications/new"
    else
      flash[:danger] = "Order NOT Created"
      render :new
    end
   
  end
  def edit
    @scholarship = Scholarship.find_by(id:params[:id])
    @organizations = Organization.all
  end
  def update
    @scholarship = Scholarship.find_by(id: params[:id])
    @scholarship.assign_attributes({
      title: params[:title],
      summary: params[:summary],
      full_description: params[:full_description],
      organization_id: params[:organization_id],
      course_level: params[:course_level],
      study_subjects: params[:study_subjects],
      number_of_awards: params[:number_of_awards],
      covered_expenses: params[:covered_expenses],
      elegibility: params[:elegibility],
      how_to_apply: params[:how_to_apply],
      deadline: params[:deadline]
    })
    if @scholarship.save
      flash[:success] = "scholarship Updated"  
      redirect_to "/scholarships/#{@scholarship.id}"
    else
      @organizations = Organization.all
      render :edit
    end

  end
  def destroy
    @scholarship = Scholarship.find_by(id: params[:id])
    @scholarship.destroy
    flash[:warning] = "scholarship deleted"
    redirect_to "/scholarships"
  end
end
