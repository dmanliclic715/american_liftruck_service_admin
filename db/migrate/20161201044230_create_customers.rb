class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :billing_address, null: false
      t.string :billing_city, null: false
      t.string :billing_state, null: false
      t.string :billing_zip, null: false
      t.string :shipping_address, null: false
      t.string :shipping_city, null: false
      t.string :shipping_state, null: false
      t.string :shipping_zip, null: false
      t.string :po_number, null: false
      t.text :notes
      t.string :contact_person
      t.string :sales_person
      t.integer :mark_up
      t.integer :per_hour_rate
      t.integer :tax_rate
      t.integer :terms
      t.timestamps null: false
    end
  end
end
