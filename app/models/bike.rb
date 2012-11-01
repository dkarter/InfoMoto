class Bike < ActiveRecord::Base
	belongs_to User
	has_many Rides
end
