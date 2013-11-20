class User < ActiveRecord::Base
   attr_accessible :name, :email, :password, :username

   has_many :posts
   has_many :comments

   has_secure_password
end
