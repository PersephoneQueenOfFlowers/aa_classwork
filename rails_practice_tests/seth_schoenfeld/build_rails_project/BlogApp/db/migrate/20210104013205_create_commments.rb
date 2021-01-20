class CreateCommments < ActiveRecord::Migration[5.2]
  def change
    create_table :commments do |t|
      t.string :body, null: false
      t.integer :author_id, null: false
      t.integer :blog_id, null: false

      t.timestamps
    end
  end
end
