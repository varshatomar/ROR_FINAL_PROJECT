class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :heading
      t.text :body
      t.decimal :price
      t.string :neighborhood
      t.string :external_url
      t.integer :bedrooms
      t.decimal :bathrooms
      t.integer :sqft
      t.string :cats
      t.string :dogs
      t.string :w_d_in_unit
      t.string :street_parking
      t.timestamps null: false
    end
  end
end
