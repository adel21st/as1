class Post < ApplicationRecord
	belongs_to :user
	belongs_to :city

	def self.search(search)
		if search
			city = City.where(nom_reel: search).or(City.where(code_postal: search))
			if city.empty?
				Post.limit(10)
			elsif city.exists? 
				city = Post.where(city_id: city)
		else 
			Post.limit(10)
		end
	else
		Post.limit(10)
	end		
end


end
