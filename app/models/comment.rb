class Comment < ActiveRecord::Base
	attr_accessible :text
	belongs_to :user
	belongs_to :social_media_user
	belongs_to :post
	has_many :votes, as: :votable

	def vote_count
	  vote_array = self.votes.map {|vote| vote.value}
	  vote_score = vote_array.inject(0,:+)
	end

end
