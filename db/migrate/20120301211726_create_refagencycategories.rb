class CreateRefagencycategories < ActiveRecord::Migration
  def change
    create_table :refagencycategories do |t|
      t.string :description

      t.timestamps
    end
  end
end
