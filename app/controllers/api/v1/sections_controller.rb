class Api::V1::SectionsController < ApplicationController
  before_action :find_section, only: [:update]
  def index
    @sections = Section.all
    render json: @sections
  end

  def update
    @section.update(section_params)
    if @section.save
      render json: @section, status: :accepted
    else
      render json: { errors: @section.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def section_params
    params.require(:section).permit(:title, :stories)
  end

  def find_section
    @section = Section.find(params[:id])
  end
end
