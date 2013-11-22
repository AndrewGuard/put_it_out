class Comment < ActiveRecord::Base
   attr_accessible :text
   belongs_to :user
   belongs_to :social_media_user
   belongs_to :post
end
