class Service < ApplicationRecord
	belongs_to :customer
	belongs_to :technician
end
