class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name
      t.string :details
      t.boolean :status
      t.string :user_id

      t.timestamps
    end
  end
end
