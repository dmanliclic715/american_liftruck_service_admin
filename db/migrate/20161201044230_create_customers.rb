class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers, id: false do |t|
      t.primary_key :id
      t.string :name
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.string :shipping_address
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip
      t.string :po_number
      t.text :notes
      t.string :contact_person
      t.string :sales_person
      t.integer :mark_up
      t.integer :per_hour_rate
      t.float :tax_rate
      t.integer :terms
      t.timestamps
    end
  end
end
