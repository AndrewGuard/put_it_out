class Post < ActiveRecord::Base
   attr_accessible :title, :body

   validates_presence_of :title
   validates_presence_of :body
   belongs_to :user
   has_many :comments
end
