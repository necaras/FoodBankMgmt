class Volunteer < ActiveRecord::Base
  belongs_to :location
  belongs_to :vtype
end
