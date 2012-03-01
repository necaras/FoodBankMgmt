class Vtype < ActiveRecord::Base
#   id          int(11) PK
#   description string

  validates     :description,   :presence => true
    
  has_many      :volunteers
end
