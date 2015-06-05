class ChangeStatusToAdminIssues < ActiveRecord::Migration
  def change
  change_column :admin_issues, :status, :boolean

  end
end
