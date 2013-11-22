class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.text :body
    	t.belongs_to :user
    	t.belongs_to :social_media_user

      t.timestamps
    end
  end
end
