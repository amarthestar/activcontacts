class AddStatusToMyactivcontacts < ActiveRecord::Migration
  def self.up
  add_column :myactivcontacts, :status, :boolean
  end

  def self.down
  remove_column :myactivcontacts, :status
  end
end
