class Api::V1::ScholarshipsController < ApplicationController
  def show
    @scholarship = Scholarship.find_by(id: params[:id])
    puts "errors messages"
      p @scholarship.errors.full_messages
  end
  
end
