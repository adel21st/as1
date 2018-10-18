class PostsController < ApplicationController
	before_action :find_post, only: [:edit, :update, :show, :delete]
  before_action :redirect_if_not_signed_in, only: [:new]

	def index
		@posts = Post.search(params[:search])
	end

 def new
  @post = Post.new
end

  # Create action saves the post into database
  def create
   @post = current_user.posts.new(post_params)
   @city = City.find_by(params[:city_id])
   if @post.save(post_params) 
    flash[:notice] = "Successfully created post!"
    redirect_to post_path(@post)
  else
    flash[:alert] = "Error creating new post!"
    render :new
  end
end

def find_post
  # @post = Post.find_by(params[:city_id])
end

def show
  @post = Post.find_by(params[:id])
end

def update
  @post = Post.find_by(params[:id])

  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
end

def edit
  @post = Post.find_by(params[:id])
end

def destroy
  @post = Post.find_by(params[:id])
  @post.destroy

  redirect_to posts_path

end

private

def post_params
  params.require(:post).permit(:title, :content, :city_id)
end

end



