class Follow < ActiveRecord::Base
  attr_accessible :user, :follower, :user_id, :follower_id
  
  belongs_to :user
  belongs_to :follower, :class_name => "User"

  validates_presence_of :user_id, :follower_id
  validates_uniqueness_of :user_id, :scope => :follower_id
end
