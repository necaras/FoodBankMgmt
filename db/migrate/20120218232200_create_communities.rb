class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.string :jurisdiction_description
      t.references :location

      t.timestamps
    end
    add_index :communities, :location_id
  end
end
