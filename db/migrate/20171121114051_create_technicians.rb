class CreateTechnicians < ActiveRecord::Migration[5.1]
	def change
		create_table :technicians do |t|
			t.string  :name
			t.string  :address
			t.string  :city
			t.string  :state
			t.string  :country
			t.string  :mobile
			t.integer :experience
			
			t.timestamps
		end
	end
end
