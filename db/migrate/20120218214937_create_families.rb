class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :comment
      t.boolean :redflag
      t.string :phone1
      t.string :phone2
      t.references :primaryclient

      t.timestamps
    end
    add_index :families, :primaryclient_id
  end
end
