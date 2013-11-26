class Post < ActiveRecord::Base
   attr_accessible :title, :body, :social_media_user_id

   validates :title, :body, presence: true
   validates :title, length: { in: 4..300}
   validates :body, length: { minimum: 4}
   belongs_to :user
   belongs_to :social_media_user
   has_many :comments
   has_many :votes, as: :votable

   def vote_count
   	vote_array = self.votes.map {|vote| vote.value}
   	vote_score = vote_array.inject(0,:+)
   end

   def self.all_cached
      Rails.cache.fetch('Post.all') { all }
   end

   after_save    :expire_contact_all_cache
   after_destroy :expire_contact_all_cache

   def expire_contact_all_cache
     Rails.cache.delete('Post.all')
   end
end
