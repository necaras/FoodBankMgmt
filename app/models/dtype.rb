class Dtype < ActiveRecord::Base
#   1 	id 	                int(11)
#	2 	description	        varchar(255)

    validates   :description,     :presence => true
    has_many    :donors
    has_many    :donees

end
