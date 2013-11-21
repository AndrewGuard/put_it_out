require 'uri'

class Resource < ActiveRecord::Base
	attr_accessible :link, :title, :description
	validates :title, length: {minimum: 5}
	validates :description, length: {minimum: 10}
	validates_format_of :link, :with => URI::regexp(%w(http https))
	validates :link, :title, :description, presence: true
end
