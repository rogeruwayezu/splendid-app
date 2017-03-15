class Api::V1::ScholarshipsController < ApplicationController
  def show
    @scholarship = Scholarship.find_by(id: params[:id])
  end
end
