class AddAttachmentPictureToBooks < ActiveRecord::Migration
  def self.up
    change_table :admin_books do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :books, :picture
  end
end
