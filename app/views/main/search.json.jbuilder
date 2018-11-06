
json.info do
	json.array!(@info) do |city|
		json.nom_reel city.nom_reel
		json.code_postal city.code_postal
		json.url cities_path(city)
	end
end
=begin
json.code_postal do
	json.array!(@code_postal) do |city|
		json.nom_reel city.code_postal
		json.url cities_path(city)
	end
end
=end