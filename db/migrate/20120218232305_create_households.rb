class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|
      t.string :postalcode
      t.string :address
      t.string :unit
      t.references :community

      t.timestamps
    end
    add_index :households, :community_id
  end
end
