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
  
    def self.GetIndonationWeight(startdate, enddate)
        @totalweight = Indonation.sum(:weightdonated, :conditions => {:donationdate => startdate.to_date..enddate.to_date})
    end
    def self.GetIndonationMoney(startdate, enddate)
        @totalmoney = Indonation.sum(:moneydonated, :conditions => {:donationdate => startdate.to_date..enddate.to_date})
    end
end

