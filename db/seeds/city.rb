#=begin
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'villes_france.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each  do  |row|
	t = City.new
	t.numero_de_commune = row[0]
	t.departement = row[1] 
	t.slug = row[2]
	t.nom = row[3]
	t.nom_simple = row[4] 
	t.nom_reel = row[5]
	t.code_postal = row[6]
	t.save
	if (City.last.id == 100 )
		then break
	else puts "continu"
	end
	puts "#{t.nom_reel}, #{t.code_postal} saved"
end

puts "There are now #{City.count} rows in the transactions table"
#=end