class ChangeUserTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :uername, :username
  end
end
