class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :friends 
   has_many :myactivcontacts
   has_many :myactivcontactsphones
   has_many :messages
   has_many :mysearches
  # Setup accessible (or protected) attributes for your model
  validates :first_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "First name can only contain letters"}
  validates :first_name, :length=>{:in=>2..30, :message => "Please enter first name (2-30 characters)"}
  validates :last_name, :format=>{:with =>/^[a-zA-Z\-' ]+$/, :message => "Last name can only contain letters"}
  validates :last_name, :length=>{:in=>2..30, :message => "Please enter Last name (2-30 characters)"}


 
  end
