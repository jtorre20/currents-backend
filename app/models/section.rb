class Section < ApplicationRecord
  has_many :section_stories
  has_many :stories, through: :section_stories
end
