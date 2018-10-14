=begin
def seed_posts
	cities = City.all

	cities.each do |city|
		2.times do
			Post.create(
				title: Faker::Lorem.sentences[0], 
				content: Faker::Lorem.sentences[0],
				user_id: rand(1..9), 
				city_id: city.id 
				)
		end
	end
end

seed_posts

=end