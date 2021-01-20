class ChangeAlbumTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :band_id, :integer, null: false
    add_column :albums, :band_id, :integer, null: true  
  end
end
