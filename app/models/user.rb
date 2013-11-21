class User < ActiveRecord::Base
	attr_accessible :name, :email, :password, :username

	has_many :posts
	has_many :comments

	validates_presence_of :password, :on => :create
	validates :password, length: { in: 6..20, message: "Must be between 6 and 20 characters" }
	validates_presence_
	validates_uniqueness_of :email
	validates :email, format: {with: /[a-zA-Z]+@.{2,}\.[a-zA-Z]{2,6}/, message: "Enter an email that works"}
	validates_presence_of :username
	validates_uniqueness_of :username
	validates :username, length: { in: 6..20, message: "Must be between 6 and 20 characters" }
	validates_presence_of :name
	validates :name, length: { in: 2..20, message: "Must be between 2 and 20 characters" }


	has_secure_password
end
