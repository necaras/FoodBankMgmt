class Location < ActiveRecord::Base
#	1 	id 	                        int(11)
#	2 	city 	                    varchar(255)
#	3 	province 	                varchar(255)
#	4 	country 	                varchar(255)
#	5 	jurisdiction_description    varchar(255)

    validates   :city, 
                :province, 
                :country,       :presence   => true
    
    has_many    :communities,   :dependent  => :destroy
    has_many    :donors,        :dependent  => :destroy
    has_many    :donees,        :dependent  => :destroy

    #method get_location_name
    #returns a string containing location's city and province formatted 'City, Prov'
    def get_location_name
        @get_location_name = "#{self.city}, #{self.province}"
    end
    
end

