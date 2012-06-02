class ChangeMyactivphonenoType < ActiveRecord::Migration
  def self.up
	 change_table :activcontactsphones do |t|
         t.change :phon_number, :bigint
	end
  end

  def self.down
	 change_table :activcontactsphones do |t|
     	t.change :phon_number, :integer
      end
end

end
