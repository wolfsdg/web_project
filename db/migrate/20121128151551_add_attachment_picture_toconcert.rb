class AddAttachmentPictureToconcert < ActiveRecord::Migration
  def self.up
    change_table :concerts do |t|
      t.has_attached_file :poster
    end
  end

  def self.down
    drop_attached_file :concerts, :poster
  end
end
