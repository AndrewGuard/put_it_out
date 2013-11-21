class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :username

	has_many :posts
	has_many :comments

	validates_presence_of :name
	validates :name, length: { in: 2..20, message: "- must be between 2 and 20 characters" }
	validates_presence_of :email
	validates_uniqueness_of :email
	validates :email, format: {with: /[a-zA-Z]+@.{2,}\.[a-zA-Z]{2,6}/, message: "- must be a valid format"}
	validates_presence_of :username
	validates_uniqueness_of :username
	validates :username, length: { in: 6..20, message: "- must be between 6 and 20 characters" }
	validates_presence_of :password, :on => :create
	validates :password, length: { in: 6..20, message: "- must be between 6 and 20 characters" }


	has_secure_password

	def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
