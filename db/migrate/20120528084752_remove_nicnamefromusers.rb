class RemoveNicnamefromusers < ActiveRecord::Migration
  def self.up
	  remove_column :users, :nick_name
  end

  def self.down
	  add_column :users, :nick_name, :string
  end
end
