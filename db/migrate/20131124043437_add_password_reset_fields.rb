class AddPasswordResetFields < ActiveRecord::Migration
  def self.up
  	add_column :users, :password_reset_token, :string
  	add_column :users, :password_expires_after, :datetime
	end

  def self.down
  	add_column :users, :password_reset_token
  	add_column :users, :password_expires_after
  end
end
