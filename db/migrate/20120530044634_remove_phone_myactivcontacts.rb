class RemovePhoneMyactivcontacts < ActiveRecord::Migration
  def self.up
	   remove_column :myactivcontacts, :phon_number
  end

  def self.down
	  add_column :myactivcontacts, :phon_number, :integer
  end
end

