class Family < ActiveRecord::Base
    
#   1 	id 	                int(11)
#	2 	comment 	        varchar(255)
#	3 	redflag 	        tinyint(1)
#	4 	phone1 	            varchar(255)
#	5 	phone2 	            varchar(255)
#	6 	primaryclient_id 	int(11)
#	9 	fstate_id 	        int(11)
#	10 	household_id 	    int(11) 	

    has_many :clients, :dependent => :destroy
    has_one  :fstates
    has_many :foodhampers, :dependent => :destroy
    
    #method get_primaryclient_name
    #returns a string conatining head of household name as formatted by Client.get_client_name
    def get_primaryclient_name
        
        @client = Client.find_by_id(self.primaryclient_id)
        
        if @client.nil? 
            @client_name = "-None Specified-"
        else
            @client_name = @client.get_client_name
        end
    end
end
