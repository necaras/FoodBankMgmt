class CreateVtypes < ActiveRecord::Migration
  def change
    create_table :vtypes do |t|
      t.text :description

      t.timestamps
    end
  end
end
