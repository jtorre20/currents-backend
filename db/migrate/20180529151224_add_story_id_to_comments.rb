class AddStoryIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :story_id, :integer
  end
end
