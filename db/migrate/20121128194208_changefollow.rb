class Changefollow < ActiveRecord::Migration
  def change
    remove_column :follows, :user_id
    add_column :follows, :follower_id, :integer
    add_index :follows, :follower_id
  end
end
