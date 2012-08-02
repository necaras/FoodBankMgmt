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
  
    def self.GetOutdonationWeight(startdate, enddate)
        @totalweight = Outdonation.sum(:weightdonated, :conditions => {:donationdate => startdate.to_date..enddate.to_date})
    end
    def self.GetOutdonationMoney(startdate, enddate)
        @totalmoney = Outdonation.sum(:moneydonated, :conditions => {:donationdate => startdate.to_date..enddate.to_date})
    end
end
