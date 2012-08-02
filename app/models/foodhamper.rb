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
  
    def self.GetHamperWeight(startdate, enddate)
        @totalweight = Foodhamper.sum(:weight, :conditions => {:pickupdate => startdate.to_date..enddate.to_date})
    end
    
    def self.GetHamperCount(startdate, enddate)
        @totalhampers = Foodhamper.count(:conditions => {:pickupdate => startdate.to_date..enddate.to_date})
    end
    
    def self.GetAdultCount(startdate, enddate)
        @hampers = Foodhamper.find_by_pickupdate(startdate.to_date..enddate.to_date)
        @families = Family.find_by_id(@hampers.family_id) unless @hampers.nil?
        if @families.nil?
            @adults = 0
        else
            @adults = Client.count(:conditions => {:family_id => @families, :birthdate => 110.years.ago..18.years.ago})
        end
    end
    
    def self.GetChildCount(startdate, enddate)
        @hampers = Foodhamper.find_by_pickupdate(startdate.to_date..enddate.to_date)
        @families = Family.find_by_id(@hampers.family_id) unless @hampers.nil?
        if @families.nil?
            @children = 0
        else
            @children = Client.count(:conditions => {:family_id => @families, :birthdate => (18.years.ago - 1.day)..Date.today})
        end
    end

end
