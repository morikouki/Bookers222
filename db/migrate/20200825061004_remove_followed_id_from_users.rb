class RemoveFollowedIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :followed_id, :integer
  end
end
