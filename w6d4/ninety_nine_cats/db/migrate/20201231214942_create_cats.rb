class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false 
      t.string :color, null: false 
      t.string :name, null: false
      t.string :sex, null: false 
      t.text :description, null: false  
      t.datetime :created_at, null: false 
      t.datetime :updated_at, null: false 
      t.timestamps
    end
  end
end
