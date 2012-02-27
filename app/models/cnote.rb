class Cnote < ActiveRecord::Base
    validates :note,    :presence => true

    belongs_to :client
end
