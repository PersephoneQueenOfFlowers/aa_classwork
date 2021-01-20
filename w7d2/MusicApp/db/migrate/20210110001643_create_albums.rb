class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null: false 
      t.string :year, null: false
      t.boolean :recording_type, default: :studio
      t.timestamps
    end
  end
end
