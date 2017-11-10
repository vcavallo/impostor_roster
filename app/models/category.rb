require "obscenity/active_model"

class Category < ActiveRecord::Base
  has_many :posts
  accepts_nested_attributes_for :posts

  validates :name, :length => { minimum: 3 }
  validates :name, :format => { with: /\A[a-zA-Z0-9 ]*\z/, message: "Only letters, numbers and spaces allowed for category field" }
  validates :name, obscenity: { message: 'We detected some nasty language there. Come on now...' }

  extend FriendlyId
  friendly_id :name, use: :slugged

end
