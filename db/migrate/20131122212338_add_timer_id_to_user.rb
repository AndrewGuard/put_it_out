class AddTimerIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :timer_id, :integer
  end
end
