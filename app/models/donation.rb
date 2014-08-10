class Donation < ActiveRecord::Base
  #campaign_id, amount,donor_id, impact
  belongs_to :donor
  belongs_to :campaign
  validates_presence_of :donor, :campaign

  def calculate_impact
    impact_size = (self.amount / self.campaign.cost_per_impact).floor
    self.update_attributes(impact: impact_size)
  end
end
