class AddTimerIdToSocialMediaUsers < ActiveRecord::Migration
  def change
    add_column :social_media_users, :timer_id, :integer
  end
end
