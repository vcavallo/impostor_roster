class Post < ActiveRecord::Base
  validates :field, :presence => true
end
