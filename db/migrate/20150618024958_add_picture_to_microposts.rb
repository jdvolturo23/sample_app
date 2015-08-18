class AddPictureToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :picture, :text
  end
end
