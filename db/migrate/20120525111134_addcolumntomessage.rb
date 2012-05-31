class Addcolumntomessage < ActiveRecord::Migration
  def self.up
	   add_column :messages, :sender, :integer
	  add_column :messages, :receiver, :integer
  end

  def self.down
	  remove_column :messages, :sender
	  remove_column :messages, :receiver
  end
end
