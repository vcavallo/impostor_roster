class Post < ActiveRecord::Base
  belongs_to :category
  validates_associated :category

 # validates :field, presence: true
 # validates :field, :length => { minimum:  3 }

  validates :months_experience, numericality: true
  validates :months_experience, presence: true
  validates :months_experience, :numericality => { greater_than: 1 }

  validates :inability, presence: true
  validates :inability, :length => { minimum: 1 }
  validates :inability, :format => { with: /\A[a-zA-Z0-9 ]*\z/, message: "Only letters, numbers and spaces allowed for inability field" }
end
