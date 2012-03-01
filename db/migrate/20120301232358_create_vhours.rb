class CreateVhours < ActiveRecord::Migration
  def change
    create_table :vhours do |t|
      t.references :volunteer
      t.date :date
      t.float :hoursworked
      t.text :details

      t.timestamps
    end
    add_index :vhours, :volunteer_id
  end
end
