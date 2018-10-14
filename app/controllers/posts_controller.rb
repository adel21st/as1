class PostsController < ApplicationController
	
	def index
		@posts = Post.search(params[:search])
	end

	private

	def city_params
		params.require(:city).permit(:slug,:nom,:nom_simple, :nom_reel, :numero_de_commune, :departement, :code_postal, :id)
	end
	
end



