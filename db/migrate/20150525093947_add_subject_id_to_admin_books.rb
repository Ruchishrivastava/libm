class AddSubjectIdToAdminBooks < ActiveRecord::Migration
  def change
    add_column :admin_books, :subject_id, :integer
  end
end
