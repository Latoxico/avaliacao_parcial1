class Post < ActiveRecord::Base 
        validates :title, presence: true
        validates :title, uniqueness: true
        
        validates :description, presence: true
        
        
        def self.search(query)
        # where(:title, query) -> retornaria somente o titulo exato.
                where("title like ?", "%#{query}%") 
        end
end
