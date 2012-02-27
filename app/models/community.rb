class Community < ActiveRecord::Base
#	1 	id 	                        int(11)
#	2 	name 	                    varchar(255)
#	3 	jurisdiction_description 	varchar(255)
#	4 	location_id 	            int(11), index

  belongs_to    :locations #foreign key - location_id
  has_many      :households, :dependent => :destroy
  
  validates     :name,  
                :location_id,   :presence => true
end
