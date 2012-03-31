class Role < ActiveRecord::Base
# id	int(11) PK
# name	string

  has_and_belongs_to_many :users
end
