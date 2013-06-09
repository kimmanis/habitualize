class AddNextSessionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :next_session, :datetime
  end
end
