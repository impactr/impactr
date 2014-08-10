class AddTotalImpactAndCostPerImpactToCampaignModel < ActiveRecord::Migration
  def change
    add_column :campaigns, :total_impact, :integer
    add_column :campaigns, :cost_per_impact, :integer
    add_column :campaigns, :completed, :boolean, :default => false
  end
end
