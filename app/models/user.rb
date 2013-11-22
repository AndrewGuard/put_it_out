class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :username

	has_many :posts
	has_many :comments

	validates_presence_of :name
	validates :name, length: { in: 2..20, message: "- must be between 2 and 20 characters" }
	validates_presence_of :email
	validates_uniqueness_of :email
	validates :email, format: {with: /.+@.{2,}\.[a-zA-Z]{2,6}/, message: "- must be a valid format"}
	validates_presence_of :username
	validates_uniqueness_of :username
	validates :username, length: { in: 6..20, message: "- must be between 6 and 20 characters" }, on: :create
	validates_presence_of :password, :on => :create
	validates :password, length: { in: 6..20, message: "- must be between 6 and 20 characters" }, on: :create


	has_secure_password

	# def self.from_facebook(auth)
	# 	where(auth.slice(:uid, :provider)).first_or_initialize.tap do |user|
	# 		user.name = auth.info.name
	# 		user.email = auth.info.email
	# 		user.save!
	# 		return user 
	# 	end
	# end
end
