class Concert < ActiveRecord::Base
  attr_accessible :date, :full_desc, :name_art, :price, :song, :time_dur, :title, :user_id

  validates_presence_of :title, :date, :full_desc, :name_art, :user_id

  belongs_to :user
end
