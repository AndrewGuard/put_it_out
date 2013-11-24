class SocialMediaUser < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :username, :photo
  mount_uploader :photo, PhotoUploader

  has_many :posts
  has_many :comments
  has_many :votes

  def self.from_facebook(auth)
		where(auth.slice(:uid, :provider)).first_or_initialize.tap do |user|
			user.name = auth.info.name
			user.email = auth.info.email
			user.username = auth.extra.raw_info.username
			user.remote_photo_url = auth.info.image
			user.save!
			return user 
		end
	end
end
