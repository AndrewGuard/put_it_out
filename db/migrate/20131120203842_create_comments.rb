class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :text
    	t.belongs_to :post
    	t.belongs_to :user
    	t.belongs_to :social_media_user

      t.timestamps
    end
  end
end
