class CreateCities < ActiveRecord::Migration[5.2]
	def change
		create_table :cities do |t|
			t.string :nom
			t.float :latitude
			t.float :longitude
			t.timestamps
		end
	end
end