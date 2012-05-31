class CreateActivcontactsphones < ActiveRecord::Migration
  def self.up
    create_table :activcontactsphones do |t|
      t.integer :phon_number
      t.boolean :status
      t.timestamps
    end
  end

  def self.down
    drop_table :activcontactsphones
  end
end
