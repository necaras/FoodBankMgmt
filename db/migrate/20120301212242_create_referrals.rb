class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.references :refagency
      t.text :details
      t.integer :numberofadults
      t.integer :numberofchildren
      t.date :referraldate
      t.string :clientname

      t.timestamps
    end
    add_index :referrals, :refagency_id
  end
end
