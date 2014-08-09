class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :venmo_id
      t.string :name

      t.timestamps
    end
  end
end
