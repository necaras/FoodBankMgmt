class Refagency < ActiveRecord::Base
  belongs_to :location
  belongs_to :refagencycategory
end
