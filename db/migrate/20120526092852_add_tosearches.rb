class AddTosearches < ActiveRecord::Migration
  def self.up
   add_column :searches, :n_name, :string
   add_column :searches, :m_mobilenumber, :integer
   add_column :searches, :e_email, :string
   add_column :searches, :s_status, :string
   add_column :searches, :user_id, :integer
  end

  def self.down
   remove_column :searches, :n_name
   remove_column :searches, :m_mobilenumber 
   remove_column :searches, :e_email 
   remove_column :searches, :s_status 
   remove_column :searches, :user_id
  end
end 
