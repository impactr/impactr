class AddImpactToDonationModel < ActiveRecord::Migration
  def change
    add_column :donations, :impact, :integer
  end
end
