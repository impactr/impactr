class Campaign < ActiveRecord::Base
	#name, org_id, unit
  belongs_to :organization
  has_many :donations
end
