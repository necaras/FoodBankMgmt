class CreateDonees < ActiveRecord::Migration
  def change
    create_table :donees do |t|
      t.string :name
      t.string :phone1
      t.string :phone2
      t.string :unit
      t.string :address
      t.string :emailaddress
      t.string :contact
      t.references :location
      t.references :dtype

      t.timestamps
    end
    add_index :donees, :location_id
    add_index :donees, :dtype_id
  end
end
