class Foodhamper < ActiveRecord::Base
#   id              int(11) PK
#   weight          float
#   pickupdate      date
#   pickupperson    string
#   referral_id     int(11) FK
#   family_id       int(11) FK
#   details         text

  validates     :weight,
                :pickupdate,
                :pickupperson,
                :referral_id,
                :family_id,     :presence => true

  belongs_to :referral
  belongs_to :family
end
