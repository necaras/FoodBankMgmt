class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.references :location
      t.references :vtype
      t.string :gender
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :unit
      t.string :address
      t.string :phone1
      t.string :phone2
      t.date :birthdate
      t.date :startdate
      t.string :emailaddress
      t.string :postalcode
      t.string :emergcontactname
      t.string :emergcontactphone
      t.text :notes

      t.timestamps
    end
    add_index :volunteers, :location_id
    add_index :volunteers, :vtype_id
  end
end
