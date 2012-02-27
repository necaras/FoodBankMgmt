class Ctype < ActiveRecord::Base

    validates :description, :presence => true
    
    has_many :clients2ctypes, :dependent => :destroy
    has_many :clients, :through => :clients2ctypes
end
