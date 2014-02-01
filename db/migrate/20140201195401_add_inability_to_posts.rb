class AddInabilityToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :inability, :string
  end
end
