class Post < ActiveRecord::Base
  validates :field, presence: true
  validates :field, :length => { minimum:  3 }

  validates :months_experience, numericality: true
  validates :months_experience, presence: true
  validates :months_experience, :numericality => { greater_than: 1 }

  validates :inability, presence: true
  validates :inability, :length => { minimum: 1 }
end
