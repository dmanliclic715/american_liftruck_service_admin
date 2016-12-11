class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :als_account_number
      t.string :vendor_name, null: false
      t.string :billing_address, null: false
      t.string :billing_city, null: false
      t.string :billing_state, null: false
      t.string :billing_zip, null: false
      t.string :shipping_address, null: false
      t.string :shipping_city, null: false
      t.string :shipping_state, null: false
      t.string :shipping_zip, null: false
      t.string :po_number
      t.text :notes
      t.string :contact_person
      t.string :sales_person
      t.integer :mark_up
      t.integer :per_hour_rate
      t.integer :tax_rate
      t.integer :terms
      t.timestamps
    end
  end
end
