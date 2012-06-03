class ChangePhoneTypeSearch < ActiveRecord::Migration
  def self.up
	 change_table :mysearches do |t|
         t.change :m_mobilenumber, :bigint
	end
  end

  def self.down
	   change_table :mysearches do |t|
     	t.change :m_mobilenumber, :integer
	end
  end
end
