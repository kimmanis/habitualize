class AddReminderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reminder, :datetime
  end
end
