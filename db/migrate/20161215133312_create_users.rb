class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :company
      t.string :website
      t.text :address
      t.integer :zip_code
      t.string :country
      t.string :member_registration
      t.string :email
      t.string :firstname_contact
      t.string :lastname_contact
      t.integer :phone
      t.boolean :group, default: :false
      t.text :description
      t.text :referrent
      t.boolean :activated, default: :false
      t.text :brands_carried
      t.boolean :subscription, default: :false

      t.timestamps
    end
  end
end
