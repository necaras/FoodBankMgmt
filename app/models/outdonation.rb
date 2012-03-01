class Outdonation < ActiveRecord::Base
#   id              int(11) PK
#   donee_id        int(11)
#   donationdate    date
#   weightdonated   float
#   moneydonated    float
#   details         text

  validates     :donee_id,
                :donationdate,      :presence => true
                
  belongs_to :donee #FK - donee_id
end
