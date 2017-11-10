require "obscenity/active_model"

class Post < ActiveRecord::Base
  belongs_to :category
  validates_associated :category

  extend FriendlyId
  friendly_id :inability, use: :slugged

  validates :months_experience, numericality: true
  validates :months_experience, presence: true
  validates :months_experience, :numericality => { greater_than: 1 }

  validates :inability, presence: true
  validates :inability, :length => { minimum: 1 }
  validates :inability, :format => { with: /\A[a-zA-Z0-9 ]*\z/, message: "Only letters, numbers and spaces allowed for inability field" }

  validates :inability, obscenity: { message: 'We detected some nasty language there. Come on now...' }
end
