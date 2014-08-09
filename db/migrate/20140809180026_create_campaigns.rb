class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.integer :organization_id
      t.string :unit

      t.timestamps
    end
  end
end
