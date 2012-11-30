class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :full_name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :concerts
  
  has_many :follower_follow, :class_name => "Follow"
  has_many :followers, :through => :follower_follow

  has_many :followed_follow, :class_name => "Follow", :foreign_key => :follower_id
  has_many :followeds, :through => :followed_follow, :source => :user_id


  def concert_followed
    Concert.where(:user_id => followeds)
  end  

end
