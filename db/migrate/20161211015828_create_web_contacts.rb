class CreateWebContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :web_contacts do |t|
      t.text :notes
      t.string :type_of_web
      t.string :web
      t.integer :contactable_id, null: false
      t.string :contactable_type, null: false
      t.timestamps null: false
    end
  end
end
