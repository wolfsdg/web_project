class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :followed_id
      t.integer :user_id
      t.timestamps
    end
    add_index :follows, :user_id
    add_index :follows, :followed_id
  end
end
