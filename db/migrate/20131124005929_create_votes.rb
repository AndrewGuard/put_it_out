class CreateVotes < ActiveRecord::Migration
	def change
		create_table :votes do |t|
			t.references :votable, polymorphic: true
			t.integer :value
			t.integer :user_id
			t.integer :social_media_user_id

			t.timestamps
		end
		add_index :votes, [:user_id, :votable_id, :votable_type], unique: true
		# add_index :votes, [:social_media_user_id, :votable_id, :votable_type], unique: true
	end
end
