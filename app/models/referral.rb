class Referral < ActiveRecord::Base
#   id                  int(11) PK
#   refagency_id        int(11) FK
#   details             text
#   numberofadults      int(11)
#   numberofchildren    int(11)
#   referraldate        date
#   clientname          string

  belongs_to :refagency, :dependent => :destroy
  has_many   :foodhampers, :dependent => :destroy
  
  validates :refagency_id,
            :referraldate,
            :numberofadults,
            :numberofchildren,
            :clientname,    :presence => true
  def get_referral_summary
    @refagencyname = Refagency.find_by_id(self.refagency_id).name
    get_referral_summary = "#{@refagencyname}|#{clientname}(#{self.numberofadults}/#{self.numberofchildren})"
  end
  
end
