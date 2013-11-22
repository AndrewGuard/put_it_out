class Post < ActiveRecord::Base
   attr_accessible :title, :body

   validates :title, :body, presence: true
   validates :title, length: { in: 4..300}
   validates :body, length: { minimum: 4}
   belongs_to :user
   belongs_to :social_media_user
   has_many :comments
end
