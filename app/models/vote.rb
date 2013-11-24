class Vote < ActiveRecord::Base
  attr_accessible :value, :social_media_user_id, :user_id
  belongs_to :votable, polymorphic: true
  belongs_to :social_media_user
  belongs_to :user


 validates_uniqueness_of :user_id, scope: [:votable_id, :votable_type]
 validates_uniqueness_of :social_media_user_id, scope: [:votable_id, :votable_type]
end
