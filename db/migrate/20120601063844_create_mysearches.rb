class CreateMysearches < ActiveRecord::Migration
  def self.up
    create_table :mysearches do |t|
      t.integer :user_id
      t.string :search_content 
      t.timestamps
    end
  end

  def self.down
    drop_table :mysearches
  end
end
