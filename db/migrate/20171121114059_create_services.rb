class CreateServices < ActiveRecord::Migration[5.1]
	def change
		create_table :services do |t|
			t.string 	:problem
			t.string	:ac_type
			t.string	:ac_count
			t.string	:brand
			t.date		:requested_date
			t.date 		:serviced_date
			t.integer	:customer_id
			t.integer 	:service_charge

			t.timestamps
		end
	end
end
