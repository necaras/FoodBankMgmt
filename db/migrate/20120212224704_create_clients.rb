class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :healthinfo
      t.string :gender
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.date :birthdate
      t.string :emailaddress
      t.string :ahcnumber

      t.timestamps
    end
  end
end
