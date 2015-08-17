class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.varchar :link
      t.varchar :title
      t.datetime :published_at
      t.integer :likes
      t.integer :dislikes
      t.varchar :uid

      t.timestamps null: false
    end
    add_index :videos, :uid
  end
end