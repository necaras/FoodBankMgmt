class CreateFstates < ActiveRecord::Migration
  def change
    create_table :fstates do |t|
      t.string :description

      t.timestamps
    end
  end
end
