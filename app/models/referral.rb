class Referral < ActiveRecord::Base
#   id                  int(11) PK
#   refagency_id        int(11) FK
#   details             text
#   numberofadults      int(11)
#   numberofchildren    int(11)
#   referraldate        date
#   clientname          string

  belongs_to :refagency, :dependent => :destroy
  
  validates :refagency_id,
            :referraldate,
            :clientname,    :presence => true
  
end
