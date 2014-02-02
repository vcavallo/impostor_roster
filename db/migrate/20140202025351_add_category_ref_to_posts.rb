class AddCategoryRefToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :category, index: true
  end
end
