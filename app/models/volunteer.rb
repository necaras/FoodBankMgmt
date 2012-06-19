class Volunteer < ActiveRecord::Base
#   id                  int(11) PK
#   location_id         int(11) FK
#   vtype_id            int(11) FK
#   gender              string
#   firstname           string
#   lastname            string
#   middlename          string
#   unit                string
#   address             string
#   phone1              string
#   phone2              string
#   birthdate           date
#   startdate           date
#   emailaddress        string
#   postalcode          string
#   emergcontactname    string
#   emergcontactphone   string
#   notes               text

  validates     :location_id,
                :vtype_id,
                :gender,
                :firstname,
                :lastname,
                :address,
                :phone1,
                :birthdate,
                :startdate,
                :postalcode,
                :emergcontactname,
                :emergcontactphone,     :presence => true
                
  validates :gender,      :presence => true,
                          :inclusion => { :in => %w(M F), :message => "must either be (M)ale or (F)emale." }                

  belongs_to    :location
  belongs_to    :vtype
  has_many      :vhours, :dependent => :destroy
  
  GENDERS = ['M','F']
  
    #method get_volunteer_name
    #returns string of volunteer name formatted 'Lastname, firstname'
    def get_volunteer_name
        @volunteer = Volunteer.find_by_id(self.id)
        if @volunteer.nil? 
            @volunteer_name = "-None Specified-"
        else
            @volunteer_name = "#{@volunteer.try(:lastname)}, #{@volunteer.try(:firstname)}"
        end
    end
    
    def self.GetVolunteerCount(startdate, enddate)
        @volunteers_count = Volunteer.joins(:vhours).where('vhours.date' => startdate.to_date..enddate.to_date).uniq.count
    end
    
    def self.GetVolunteerHours(startdate, enddate)
        @vhours_sum = Volunteer.joins(:vhours).where('vhours.date' => startdate.to_date..enddate.to_date).sum('vhours.hoursworked')
    end
    
end
