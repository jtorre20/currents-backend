class CreateSectionStories < ActiveRecord::Migration[5.1]
  def change
    create_table :section_stories do |t|
      t.integer :sectionId
      t.integer :storyId

      t.timestamps
    end
  end
end
