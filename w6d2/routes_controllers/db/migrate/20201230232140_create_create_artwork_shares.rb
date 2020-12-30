class CreateCreateArtworkShares < ActiveRecord::Migration[5.2]
  def change
    create_table :create_artwork_shares do |t|
      t.string :artwork_id, null: false
      t.integer :viewer_id, null: false 
      t.timestamps
    end
  end
end
