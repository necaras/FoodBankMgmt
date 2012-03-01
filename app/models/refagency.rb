class Refagency < ActiveRecord::Base
#   id                      int(11) PK
#   location_id             int(11) FK
#   name                    string
#   phone1                  string
#   phone2                  string
#   unit                    string
#   address                 string
#   contact                 string
#   emailaddress            string
#   refagencycategory_id    int(11) FK

  belongs_to :location              #FK - location_id
  belongs_to :refagencycategory     #FK - refagencycategory_id

  validates     :location_id,
                :name,
                :phone1,
                :address,       :presence => true
end
