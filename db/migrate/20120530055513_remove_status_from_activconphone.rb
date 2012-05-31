class RemoveStatusFromActivconphone < ActiveRecord::Migration
  def self.up
      remove_column :activcontactsphones, :status
  end

  def self.down
      add_column :activcontactsphones, :status, :boolean
  end
end
