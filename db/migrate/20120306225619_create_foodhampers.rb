class CreateFoodhampers < ActiveRecord::Migration
  def change
    create_table :foodhampers do |t|
      t.float :weight
      t.date :pickupdate
      t.string :pickupperson
      t.references :referral
      t.references :family
      t.text :details

      t.timestamps
    end
    add_index :foodhampers, :referral_id
    add_index :foodhampers, :family_id
  end
end
