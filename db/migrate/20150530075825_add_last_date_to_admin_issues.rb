class AddLastDateToAdminIssues < ActiveRecord::Migration
  def change
    add_column :admin_issues, :last_date, :date
  end
end
