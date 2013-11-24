class Vote < ActiveRecord::Base
  attr_accessible :value, :social_media_user_id, :user_id
  belongs_to :votable, polymorphic: true
  belongs_to :social_media_user
  belongs_to :user


 
end
