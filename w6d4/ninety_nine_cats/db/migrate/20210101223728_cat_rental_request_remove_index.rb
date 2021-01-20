class CatRentalRequestRemoveIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index :CatRentalRequest, name: "index_cat_rental_requests_on_cat_id"
  end
end
