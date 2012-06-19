class Dtype < ActiveRecord::Base
#   1 	id 	                int(11)
#	2 	description	        varchar(255)

    validates   :description,     :presence => true
    has_many    :donors
    has_many    :donees
    
    def GetDonationWeight(startdate, enddate)
        @getdonationweight = self.donees.joins(:outdonations).where('outdonations.donationdate' => startdate.to_date..enddate.to_date).sum('outdonations.weightdonated')
    end
    
    def self.GetUndefinedDonationWeight(startdate, enddate)
        @getdonationweight = Donee.joins(:outdonations).where('donees.dtype_id' => nil, 'outdonations.donationdate' => startdate.to_date..enddate.to_date).sum('outdonations.weightdonated')
    end
    
    def self.GetTotalDonationWeight(startdate, enddate)
        @getdonationweight = Donee.joins(:outdonations).where('outdonations.donationdate' => startdate.to_date..enddate.to_date).sum('outdonations.weightdonated')
    end

end
