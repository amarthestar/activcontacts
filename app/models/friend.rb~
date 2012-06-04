class Friend < ActiveRecord::Base
belongs_to :user
  validates :first_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "First name can only contain letters"}
  validates :last_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "First name can only contain letters"}
  validates :nick_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "Nick name can only contain letters"}
end
