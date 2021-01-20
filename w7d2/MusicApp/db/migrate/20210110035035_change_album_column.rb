class ChangeAlbumColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :recording_type
    add_column :albums, :live, :boolean  
  end
end
