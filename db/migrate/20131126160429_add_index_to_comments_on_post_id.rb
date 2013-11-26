class AddIndexToCommentsOnPostId < ActiveRecord::Migration
  def change
    #limit the amount of data you need to get to your query
    # Quickly look up all the comments associated with that post_id

    # add_index :table_name, 
    add_index :comments, :post_id
  end
end
