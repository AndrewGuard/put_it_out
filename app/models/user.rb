class User < ActiveRecord::Base
   attr_accessible :name, :email, :password, :username

   has_many :posts
   has_many :comments

  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  


   has_secure_password
end
