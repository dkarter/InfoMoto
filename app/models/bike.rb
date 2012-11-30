class Bike < ActiveRecord::Base
	#attr_accessible :make, :model, :year
	belongs_to :user
	has_many :rides
end
