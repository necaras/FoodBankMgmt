class CreateDtypes < ActiveRecord::Migration
  def change
    create_table :dtypes do |t|
      t.string :description

      t.timestamps
    end
  end
end
