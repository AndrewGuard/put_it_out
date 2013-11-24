class AddAuthTokenToSocialMediaUsers < ActiveRecord::Migration
  def change
    add_column :social_media_users, :auth_token, :string
  end
end
