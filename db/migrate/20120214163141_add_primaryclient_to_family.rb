class AddPrimaryclientToFamily < ActiveRecord::Migration
  def change
    add_column :families, :primaryclient_id, :int

  end
end
