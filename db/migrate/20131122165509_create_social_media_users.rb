class CreateSocialMediaUsers < ActiveRecord::Migration
  def change
    create_table :social_media_users do |t|
      t.string :name
      t.string :email
      t.string :provider
      t.string :username
      t.string :uid
      t.string :photo
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
