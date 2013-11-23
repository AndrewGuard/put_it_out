class SocialMediaUser < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :username

  has_many :posts
  has_many :comments

  def self.from_facebook(auth)
  	p auth
  	p "%%%%%%%%%%%%%%"
		where(auth.slice(:uid, :provider)).first_or_initialize.tap do |user|
			user.name = auth.info.name
			user.email = auth.info.email
			user.username = auth.extra.raw_info.username
			user.save!
			return user 
		end
	end
end
