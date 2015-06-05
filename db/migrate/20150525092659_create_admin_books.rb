class CreateAdminBooks < ActiveRecord::Migration
  def change
    create_table :admin_books do |t|
      t.string :book_name
      t.string :author_name

      t.timestamps null: false
    end
  end
end
