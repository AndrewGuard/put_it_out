class User < ActiveRecord::Base

	attr_accessible :name, :email, :password, :username, :photo, :admin, :auth_token
	mount_uploader :photo, PhotoUploader
	before_create { generate_token(:auth_token) }
	

	has_many :posts
	has_many :comments
	has_many :votes
	belongs_to :timer

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

	
	def send_password_reset
		generate_token(:password_reset_token)
		self.password_expires_after = Time.zone.now
		save!
		UserMailer.password_reset(self).deliver
	end



	def generate_token(column)
		begin
			self[column] = SecureRandom.urlsafe_base64
		end while User.exists?(column => self[column])
	end



end
