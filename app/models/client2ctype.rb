class Client2ctype < ActiveRecord::Base
    belongs_to :client, :autosave => true
    belongs_to :ctype
end
