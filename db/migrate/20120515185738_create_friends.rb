class CreateFriends < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick_name
      t.integer :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :friends
  end
end
