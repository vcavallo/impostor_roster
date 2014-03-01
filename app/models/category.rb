class Category < ActiveRecord::Base
  has_many :posts
  accepts_nested_attributes_for :posts

   # TODO: ha! I forgot rails has this already...
   # def find_or_create(category)
   #   if Category.where(name: category.downcase).exists?
   #    return Category.where(name: category.downcase)
   #   else
   #     return Category.create(name: category.downcase)
   #   end
   # end

end
