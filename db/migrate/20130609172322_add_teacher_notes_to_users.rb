class AddTeacherNotesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :teacher_notes, :string
  end
end
