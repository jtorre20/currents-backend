class SectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :stories
  has_many :stories
end
