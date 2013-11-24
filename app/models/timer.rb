class Timer < ActiveRecord::Base
  attr_accessible :updated_at

  belongs_to :user
  belongs_to :social_media_user
end
