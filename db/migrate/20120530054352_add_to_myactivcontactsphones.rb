class AddToMyactivcontactsphones < ActiveRecord::Migration
  def self.up
	add_column :activcontactsphones, :user_id, :integer
  end

  def self.down
	remove_column :activcontactsphones, :user_id
  end
end
