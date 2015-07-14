class AddTimestampsToComments < ActiveRecord::Migration
  def self.up # Or `def up` in 3.1
    change_table :comments do |t|
      t.timestamps
    end
  end
  def self.down # Or `def down` in 3.1
    remove_column :comments, :created_at
    remove_column :comments, :updated_at
  end
end
