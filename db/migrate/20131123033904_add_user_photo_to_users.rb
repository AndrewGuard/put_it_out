class AddUserPhotoToUsers < ActiveRecord::Migration
  def change
  	add_column :social_media_users, :image :file
  end
end
