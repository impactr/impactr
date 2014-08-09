class Organization < ActiveRecord::Base
	#venmo_id, name
	has_many :campaigns
end
