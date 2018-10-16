json.nom_reel do
  json.array!(@nom_reel) do |city|
    json.nom_reel city.nom_reel
    json.url cities_path(city)
  end
end

json.code_postal do
  json.array!(@code_postal) do |city|
    json.nom_reel city.code_postal
    json.url cities_path(city)
  end
end