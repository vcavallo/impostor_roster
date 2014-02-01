class AddMonthsExperienceToPost < ActiveRecord::Migration
  def change
    add_column :posts, :months_experience, :string
  end
end
