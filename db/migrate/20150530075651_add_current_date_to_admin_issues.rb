class AddCurrentDateToAdminIssues < ActiveRecord::Migration
  def change
    add_column :admin_issues, :current_date, :date
  end
end
