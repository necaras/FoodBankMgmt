class Refagencycategory < ActiveRecord::Base
#   id              int(11) PK
#   description     string

    validates   :description,   :presence => true
    
    has_many    :refagencies   
    
    def GetRAReferralCount(startdate, enddate)
        @refagencies = Refagency.find_by_refagencycategory_id(self.id)
        @referrals = Referral.count(:conditions => {:refagency_id => @refagencies, :referraldate => startdate.to_date..enddate.to_date})
    end
    
    def self.GetUndefinedRAReferralCount(startdate, enddate)
        @refagencies = Refagency.find_by_refagencycategory_id(nil)
        @referrals = Referral.count(:conditions => {:refagency_id => @refagencies, :referraldate => startdate.to_date..enddate.to_date})
    end
    
    def self.GetTotalRAReferralCount(startdate, enddate)
        @refagencies = Refagency.all
        @referrals = Referral.count(:conditions => {:refagency_id => @refagencies, :referraldate => startdate.to_date..enddate.to_date})
    end
    
end
