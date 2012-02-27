class Client < ActiveRecord::Base

#	1 	id 	            int(11)
#	2 	healthinfo 	    varchar(255)
#	3 	gender 	        varchar(255)
#	4 	firstname 	    varchar(255)
#	5 	middlename 	    varchar(255)
#	6 	lastname 	    varchar(255)
#	7 	birthdate 	    date
#	8 	emailaddress 	varchar(255)
#	9 	ahcnumber 	    varchar(255)
#	12 	family_id 	    int(11) 		

    validates :gender,      :presence => true,
                            :inclusion => { :in => %w(M F), :message => "must either be (M)ale or (F)emale." }
    validates :firstname, 
              :lastname,
              :family_id,   :presence => true
    validates :ahcnumber,   :presence => true,
                            :length => { :minimum => 10, :message => "must be in the format XXXXX-XXXX" }
    
    GENDERS = ['M','F']
    
    has_many :cnotes, :dependent => :destroy
    has_many :client2ctypes, :dependent => :destroy, :autosave => true
    has_many :ctypes, :through => :client2ctypes
    belongs_to :family #foreign key - family_id
    
    #method ctype_ids
    #returns array of existing Client Type IDs associated with a client
    def ctype_ids=(ctype_ids)
        client2ctypes.each do |client2ctype|
            client2ctype.destroy unless ctype_ids.include? client2ctype.ctype_id
        end
        
        ctype_ids.each do |ctype_id|
            self.client2ctypes.build(:ctype_id => ctype_id) unless client2ctypes.any? { |d| d.ctype_id == ctype_id }
        end
    end
    
    #method get_client_name
    #returns string of client name formatted 'Lastname, firstname'
    def get_client_name
        @client = Client.find_by_id(self.id)
        if @client.nil? 
            @client_name = "-None Specified-"
        else
            @client_name = "#{@client.try(:lastname)}, #{@client.try(:firstname)}"
        end
    end

        
end
