class AddStudentNotesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :student_notes, :string
  end
end
