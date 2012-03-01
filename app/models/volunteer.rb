class Volunteer < ActiveRecord::Base
#   id                  int(11) PK
#   location_id         int(11) FK
#   vtype_id            int(11) FK
#   gender              string
#   firstname           string
#   lastname            string
#   middlename          string
#   unit                string
#   address             string
#   phone1              string
#   phone2              string
#   birthdate           date
#   startdate           date
#   emailaddress        string
#   postalcode          string
#   emergcontactname    string
#   emergcontactphone   string
#   notes               text

  validates     :location_id,
                :gender,
                :firstname,
                :lastname,
                :address,
                :phone1,
                :birthdate,
                :startdate,
                :postalcode,
                :emergcontactname,
                :emergcontactphone,     :presence => true 

  belongs_to    :location
  belongs_to    :vtype
  has_many      :vhours, :dependent => :destroy
end
