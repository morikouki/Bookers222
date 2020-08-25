class RemoveFollowedFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :followed, :integer
  end
end
