class PagesController < ApplicationController

	def index
		@posts = Post.limit(2)
	end

end
