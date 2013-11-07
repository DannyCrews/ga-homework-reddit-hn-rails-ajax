class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :link
      t.text :body
      t.integer :up_votes
      t.integer :down_votes
      t.string :timestamps

      t.timestamps
    end
  end
end
