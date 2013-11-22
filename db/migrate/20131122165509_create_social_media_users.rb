class CreateSocialMediaUsers < ActiveRecord::Migration
  def change
    create_table :social_media_users do |t|
      t.string :name
      t.string :email
      t.string :provider
      t.string :username
      t.integer :uid

      t.timestamps
    end
  end
end
