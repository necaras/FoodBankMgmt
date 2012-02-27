class CreateCnotes < ActiveRecord::Migration
  def change
    create_table :cnotes do |t|
      t.text :note
      t.date :notedate
      t.references :client

      t.timestamps
    end
    add_index :cnotes, :client_id
  end
end
