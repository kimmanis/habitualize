class AddNextReminderTimeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reminder_time, :time
  end
end
