class ChangeArtworkShareTable < ActiveRecord::Migration[5.2]
  def change
    change_column :artwork_shares, :artwork_id, 'integer USING CAST(artwork_id AS integer)' 
    # remove_column(:artwork_shares, :artwork_id)
    # add_column(:artwork_shares,:artwork_id,:integer, null: false)

  end
end
