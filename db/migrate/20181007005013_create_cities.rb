class CreateCities < ActiveRecord::Migration[5.2]
	def change
		create_table :cities do |t|
			t.string :numero_de_commune
			t.string :departement
			t.string :slug
			t.string :nom
			t.string :nom_simple
			t.string :nom_reel
			t.string :code_postal
			t.timestamps
		end
	end
end