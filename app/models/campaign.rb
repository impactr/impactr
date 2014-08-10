class Campaign < ActiveRecord::Base
	#name, org_id, unit, completed, total_impact, cost_per_impact
  belongs_to :organization
  has_many :donations

  def calculate_campaign_impact

    total_raised = 0
    self.donations.each{|d| total_raised += d.amount}

    cost_per_impact = (total_raised / total_impact).floor 
    self.update_attributes(cost_per_impact: cost_per_impact)

    self.donations.each{|d| d.calculate_impact}
  end
end
