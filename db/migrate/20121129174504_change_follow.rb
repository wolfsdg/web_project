class ChangeFollow < ActiveRecord::Migration
  def change
    remove_column :follows, :follower_id
    add_column :follows, :user_id, :integer
    add_index :follows, :user_id
  end
end
