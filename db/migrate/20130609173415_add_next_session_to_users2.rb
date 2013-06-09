class AddNextSessionToUsers2 < ActiveRecord::Migration
  def change
    add_column :users2s, :next_session, :datetime
  end
end
