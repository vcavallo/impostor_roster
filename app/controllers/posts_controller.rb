class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @field = params[:category] if params[:category]
  end

  def create
    found_or_created_category = Category.find_or_create_by(name: post_params[:category].downcase)

    @post = Post.create(
      inability: post_params[:inability].downcase,
      months_experience: post_params[:months_experience].to_i,
      category: found_or_created_category
    )
    @posts = Post.all
    render "index"
  end

  private
  def post_params
    params.require(:post).permit(
      :category,
      :months_experience,
      :inability,
      :field
    )
  end
end
