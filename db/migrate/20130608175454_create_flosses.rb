class CreateFlosses < ActiveRecord::Migration
  def change
    create_table :flosses do |t|
      t.integer :user

      t.timestamps
    end
  end
end
