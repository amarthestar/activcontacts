class AddToMyactivcontacts < ActiveRecord::Migration
  def self.up
   add_column :myactivcontacts, :user_id, :integer
  end

  def self.down
   remove_column :myactivcontacts, :user_id
  end
end
