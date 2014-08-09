class Donor < ActiveRecord::Base
  #name, email, venmo_id
  has_many :donations
  validates_presence_of :email, :name
end
