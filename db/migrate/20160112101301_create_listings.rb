class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :property_type
      t.string :bedrooms
      t.string :country
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
