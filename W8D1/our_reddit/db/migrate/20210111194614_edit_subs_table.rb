class EditSubsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :subs, :moderator_id, :integer, null: false
    add_column :posts, :author_id, :integer, null: false
    add_column :posts, :sub_id, :integer, null: false 
    add_index :subs, :moderator_id
    add_index :posts, :author_id
    add_index :posts, :sub_id
  end
end

