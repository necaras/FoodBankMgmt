class Vhour < ActiveRecord::Base
#   id              int(11) PK
#   volunteer_id    int(11) FK
#   date            date
#   hoursworked     float
#   details         text

  validates     :volunteer_id,
                :date,
                :hoursworked,   :presence => true

  belongs_to :volunteer     #FK - volunteer_id
end
