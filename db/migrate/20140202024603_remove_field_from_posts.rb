class RemoveFieldFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :field, :string
  end
end
