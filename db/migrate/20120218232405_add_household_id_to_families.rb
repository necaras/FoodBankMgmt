class AddHouseholdIdToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :household_id, :integer

  end
end
