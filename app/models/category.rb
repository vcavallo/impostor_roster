class Category < ActiveRecord::Base
  has_many :posts
  accepts_nested_attributes_for :posts

  validates :name, :length => { minimum: 3 }

end
