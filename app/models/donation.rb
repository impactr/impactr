class Donation < ActiveRecord::Base
  #campaign_id, amount,donor_id
  belongs_to :donor
  belongs_to :campaign
  validates_presence_of :donor, :campaign
end
