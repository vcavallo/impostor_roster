class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @posts = Post.all
    render "index"
  end

  private
  def post_params
    params.require(:post).permit(:field, :months_experience, :inability)
  end
end
