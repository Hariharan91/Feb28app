class RemovePostIdFromcomments < ActiveRecord::Migration
  def change
  	remove_column :comments, :Post_id, :references
  end
end
