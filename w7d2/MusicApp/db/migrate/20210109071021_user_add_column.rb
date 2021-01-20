class UserAddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fave_album, :string, null: true 
  end
end
