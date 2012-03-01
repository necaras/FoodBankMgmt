class CreateOutdonations < ActiveRecord::Migration
  def change
    create_table :outdonations do |t|
      t.references :donee
      t.date :donationdate
      t.float :weightdonated
      t.float :moneydonated
      t.text :details

      t.timestamps
    end
    add_index :outdonations, :donee_id
  end
end
