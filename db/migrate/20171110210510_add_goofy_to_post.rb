class AddGoofyToPost < ActiveRecord::Migration
  def change
    add_column :posts, :goofy, :boolean, default: false
  end
end
