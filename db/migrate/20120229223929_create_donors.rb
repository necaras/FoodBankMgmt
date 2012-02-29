class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
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
    add_index :donors, :location_id
    add_index :donors, :dtype_id
  end
end
