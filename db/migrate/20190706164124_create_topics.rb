class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.text :big_text
      t.integer :rubric_id
      t.integer :tag_id
      t.datetime :publication_at
      t.datetime :one_more_time
      t.timestamps
    end
  end
end
