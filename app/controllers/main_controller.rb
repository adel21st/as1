class MainController < ApplicationController
	before_action :force_json, only: :search



	def search 
		@nom_reel = City.ransack(nom_reel_cont: params[:q]).result(distinct: true)
		@code_postal = City.ransack(code_postal_cont: params[:q]).result(distinct: true)
	end 

	respond_to do |format| 
		format.html {}
		format.json {
			@nom_reel = @nom_reel.limit(5)
			@code_postal = @code_postal.limit(5)
		}
	end 

	private

	def city_params
		params.require(:city).permit(:slug,:nom,:nom_simple, :nom_reel, :numero_de_commune, :departement, :code_postal, :id)
	end

	def force_json
		request.format = :json
	end


end
