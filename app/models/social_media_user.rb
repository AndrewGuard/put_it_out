class SocialMediaUser < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :username, :photo
  mount_uploader :photo, PhotoUploader
  before_create { generate_token(:auth_token) }

  has_many :posts
  has_many :comments
  has_many :votes
  belongs_to :timer

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

	def generate_token(column)
			begin
				self[column] = SecureRandom.urlsafe_base64
			end while User.exists?(column => self[column])
		end


end
