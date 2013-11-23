class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.text :body
    	t.belongs_to :user
    	t.integer :social_media_user_id

      t.timestamps
    end
  end
end
