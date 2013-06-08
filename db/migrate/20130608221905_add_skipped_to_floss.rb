class AddSkippedToFloss < ActiveRecord::Migration
  def change
    add_column :flosses, :skipped, :integer
  end
end
