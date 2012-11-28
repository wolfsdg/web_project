class Follow < ActiveRecord::Base
  attr_accessible :followed_id, :follower_id
  
  validates_presence_of :followed_id, :follower_id
  
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  validates_uniqueness_of :followed_id, :scope => :follower_id
end
