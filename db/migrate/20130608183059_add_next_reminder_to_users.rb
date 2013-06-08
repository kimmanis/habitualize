class AddNextReminderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :next_reminder, :datetime
  end
end
