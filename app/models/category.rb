class Category < ActiveRecord::Base
  has_many :posts
  accepts_nested_attributes_for :posts

  validates :name, :length => { minimum: 3 }
  validates :name, :format => { with: /\A[a-zA-Z0-9]*\z/, message: "Only letters and numbers allowed for category field" }

  extend FriendlyId
  friendly_id :name, use: :slugged

end
