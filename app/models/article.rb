class Article < ActiveRecord::Base
	has_many:comments
	def self.search(search)
	  where("title LIKE ?", "%#{search}%") 
	  # where("body LIKE ?", "%#{search}%")
	end
end
