class Post < ApplicationRecord


	belongs_to :user, optional: true
    # has_many_attached :image
    has_one_attached :image
    has_many :comments, dependent: :destroy
  

    def self.search(search)
        where("description LIKE ?","%#{search.downcase}%","%#{search.downcase}%")
    end

       def filter(filter)
         if filter
         @posts = Post.where(category: filter)
         else
         @posts = Post.all
         end
        end

end
