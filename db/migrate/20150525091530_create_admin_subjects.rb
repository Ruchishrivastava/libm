class CreateAdminSubjects < ActiveRecord::Migration
  def change
    create_table :admin_subjects do |t|
      t.string :subject_name

      t.timestamps null: false
    end
  end
end
