class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.friendly.find(params[:id])
    @category_posts = Post.where(category_id: @category.id)
  end
end
