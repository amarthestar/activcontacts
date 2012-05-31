class Changecolumnformessage < ActiveRecord::Migration
  def self.up
	  remove_column :messages, :senderid
	  remove_column :messages, :receiverid
  end

  def self.down
	  add_column :messages, :sender,:integer
	  add_column :products, :receiver, :integer
  end
end
