class CreateClient2ctypes < ActiveRecord::Migration
  def change
    create_table :client2ctypes do |t|
      t.references :client
      t.references :ctype

      t.timestamps
    end
    add_index :client2ctypes, :client_id
    add_index :client2ctypes, :ctype_id
  end
end
