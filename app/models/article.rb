class Article < ActiveRecord::Base
  has_many:comments, dependent: :destroy 
	def self.search(search)
	  where("title ILIKE ? OR body ILIKE ?", "%#{search}%", "%#{search}%") 
	  # where("body LIKE ?", "%#{search}%")
	end
end
