class CreateSectionStories < ActiveRecord::Migration[5.1]
  def change
    create_table :section_stories do |t|
      t.integer :section_id
      t.integer :story_id

      t.timestamps
    end
  end
end
