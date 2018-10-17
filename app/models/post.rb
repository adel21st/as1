class Post < ApplicationRecord
	belongs_to :user
	belongs_to :city

	def self.search(search)
		if search
			city = City.where(nom_simple: search).or(City.where(code_postal: search))
			if city.exists?
				Post.where(city_id: city)
			else 
				Post.limit(5)
			end
		else
			Post.limit(5)
		end		
	end

end
