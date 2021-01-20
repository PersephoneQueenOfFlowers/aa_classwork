class ChangeCommentsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :commments, :comments
  end
end
