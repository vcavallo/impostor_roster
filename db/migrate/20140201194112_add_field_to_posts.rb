class AddFieldToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :field, :string
  end
end
