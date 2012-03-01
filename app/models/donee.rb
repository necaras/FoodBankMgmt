class Donee < ActiveRecord::Base
#   id              int(11) PK
#   name            varchar(255)
#   phone1          varchar(255)
#   phone2          varchar(255)
#   unit            varchar(255)
#   address         varchar(255)
#   emailaddress    varchar(255)
#   contact         varchar(255)
#   location_id     int(11)
#   dtype_id        int(11)

  belongs_to :location      #FK - location_id
  belongs_to :dtype         #FK - dtype_id
  has_many   :outdonations, :dependent => :destroy
  
  validates     :name,
                :phone1,
                :address,
                :location_id,   :presence => true
end
