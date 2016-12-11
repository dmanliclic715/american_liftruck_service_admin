class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.string :number, null: false
      t.text :notes
      t.string :type_of_number
      t.integer :phoneable_id
      t.string :phoneable_type
      t.timestamps null: false
    end

   add_index :phone_numbers, [:phoneable_id, :phoneable_type]
  end
end
