class AddFamilyToClient < ActiveRecord::Migration
  def change
    add_column :clients, :family_id, :int

  end
end
