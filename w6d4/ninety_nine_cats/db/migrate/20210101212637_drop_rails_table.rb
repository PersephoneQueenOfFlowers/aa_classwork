class DropRailsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :rails
  end
end
