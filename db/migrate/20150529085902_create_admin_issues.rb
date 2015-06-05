class CreateAdminIssues < ActiveRecord::Migration
  def change
    create_table :admin_issues do |t|
      t.integer :book_id
      t.integer :user_id
      t.string :status

      t.timestamps null: false
    end
  end
end
