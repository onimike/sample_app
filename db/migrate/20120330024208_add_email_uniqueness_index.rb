class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
	add_index :users, :email, :unique => true
	#Adds an index column of the users table
  end

  def self.down
	remove_index :users, :email
  end
end
