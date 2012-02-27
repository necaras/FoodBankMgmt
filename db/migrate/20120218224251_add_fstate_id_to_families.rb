class AddFstateIdToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :fstate_id, :integer
    add_index :families, :fstate_id

  end
end
