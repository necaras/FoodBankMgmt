class Indonation < ActiveRecord::Base
#   id              int(11) PK
#   donor_id        int(11)
#   donationdate    date
#   weightdonated   float
#   moneydonated    float
#   details         text

  validates     :donor_id,
                :donationdate,      :presence => true

  belongs_to :donor #FK - donor_id
end
