class CreateIndonations < ActiveRecord::Migration
  def change
    create_table :indonations do |t|
      t.references :donor
      t.date :donationdate
      t.float :weightdonated
      t.float :moneydonated
      t.text :details

      t.timestamps
    end
    add_index :indonations, :donor_id
  end
end
