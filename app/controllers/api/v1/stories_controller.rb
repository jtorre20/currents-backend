class Api::V1::StoriesController < ApplicationController
  before_action :find_story, only: [:update]
  def index
    @stories = Story.all
    render json: @stories
  end

  def update
    @story.update(story_params)
    if @story.save
      render json: @story, status: :accepted
    else
      render json: { errors: @story.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :description, :url, :url_to_image)
  end

  def find_story
    @story = Story.find(params[:id])
  end
end
