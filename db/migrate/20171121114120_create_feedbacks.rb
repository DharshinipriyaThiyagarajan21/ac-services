class CreateFeedbacks < ActiveRecord::Migration[5.1]
	def change
		create_table :feedbacks do |t|
			t.text :comment
			t.integer :ratings
			t.integer :customer_id
			t.integer :service_id
			
			t.timestamps
		end
	end
end
