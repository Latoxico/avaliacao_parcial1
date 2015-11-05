class Post < ActiveRecord::Base 
        validates :title, presence: true
        validates :title, uniqueness: true
        
        validates :description, presence: true
end
