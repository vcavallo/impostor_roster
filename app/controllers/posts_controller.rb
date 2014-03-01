class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #TODO: look up category. 
    # If it exists, use it. If it doesn't, create it.
    # found_or_created_category = 
    @post = Post.create(
      inability: post_params[:inability].downcase,
      months_experience: post_params[:months_experience].to_i,
      category: Category.find_or_create_by(name: post_params[:category].downcase)
      )
    @posts = Post.all
    render "index"
  end

  private
  def post_params
    params.require(:post).permit(
      :category,
      :months_experience,
      :inability
    )
  end
end
