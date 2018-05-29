class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :url_to_image, :comments
end
