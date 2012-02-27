class Household < ActiveRecord::Base

#	1 	id 	            int(11)
#	2 	postalcode 	    varchar(255)
#	3 	address 	    varchar(255)
#	4 	unit 	        varchar(255)
#	5 	community_id 	int(11)
 
  validates     :postalcode,
                :address,
                :community_id,  :presence => true
                
  belongs_to    :communities #foreign key - household_id
  has_many      :families
  
  def get_household_address
    if self.unit.nil?
        get_household_address = "#{self.address} 
                                    (#{Community.find(self.community_id).name}), 
                                    #{Location.find(Community.find(self.community_id).id).get_location_name}"
    else
        get_household_address = "#{self.unit}, 
                                    #{self.address} 
                                    (#{Community.find(self.community_id).name}), 
                                    #{Location.find(Community.find(self.community_id).id).get_location_name}"
    end
  end
end
