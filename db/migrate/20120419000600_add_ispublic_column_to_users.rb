class AddIspublicColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :ispublic, :boolean, :default => false
  end

  def self.down
    remove_column :users, :ispublic
  end
end
