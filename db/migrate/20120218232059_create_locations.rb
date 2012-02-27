class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :province
      t.string :country
      t.string :jurisdiction_description

      t.timestamps
    end
  end
end
