class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :email
      t.string :name
      t.string :venmo_id

      t.timestamps
    end
  end
end
