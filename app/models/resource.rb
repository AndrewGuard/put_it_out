class Resource < ActiveRecord::Base
	validates :title, length: {minimum: 5}
	validates :description, length: {minimum: 10}
	validates :link, format: { with: /https?:\/\/[\S]+/, message: "Invalid URL" } 
	validates :link, :title, :description, presence: true
end
