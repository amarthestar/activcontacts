class Friend < ActiveRecord::Base
belongs_to :user
  validates :first_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "First name can only contain letters"}
  validates :first_name, :length=>{:in=>2..30, :message => "Please enter First name (2-30 characters)"}
  validates :last_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "Last name can only contain letters"}
  validates :last_name, :length=>{:in=>2..30, :message => "Please enter Last name (2-30 characters)"}
  validates :nick_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "Nick name can only contain letters"}
  validates :nick_name, :length=>{:in=>2..30, :message => "Please enter Nick name (2-30 characters)
end
