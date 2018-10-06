class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.includes(:posts).friendly.find(params[:id])
  end
end
