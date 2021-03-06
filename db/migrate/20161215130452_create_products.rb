class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name_products
      t.boolean :status, default: :false
      t.string :image
      t.string :gender
      t.string :type
      t.string :type_sell
      t.string :code
      t.string :season
      t.text :description
      t.datetime :date_availability
      t.string :country
      t.decimal :price
      t.string :size
      t.integer :discount
      t.string :variants
      t.boolean :on_sale, default: :false
      t.integer :brand_id
      t.integer :retailler_id

      t.timestamps
    end
  end
end
