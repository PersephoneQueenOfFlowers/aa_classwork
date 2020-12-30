class ChangeTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :create_artwork_shares, :artwork_shares
  end
end
