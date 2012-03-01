class CreateRefagencies < ActiveRecord::Migration
  def change
    create_table :refagencies do |t|
      t.references :location
      t.string :name
      t.string :phone1
      t.string :phone2
      t.string :unit
      t.string :address
      t.string :contact
      t.string :emailaddress
      t.references :refagencycategory

      t.timestamps
    end
    add_index :refagencies, :location_id
    add_index :refagencies, :refagencycategory_id
  end
end
