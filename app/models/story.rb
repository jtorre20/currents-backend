class Story < ApplicationRecord
  has_many :section_stories
  has_many :sections, through: :section_stories
end
