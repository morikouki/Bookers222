class AddFollowedIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :followed_id, :integer
  end
end
