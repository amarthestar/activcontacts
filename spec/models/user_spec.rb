require 'spec_helper'

describe User do
  
	before(:each) do
		@hit = User.new(:id => "",
					:email => "mailamars@gmail.com",
					:encrypted_password => "0bd22c76363f5a9cda299d5c8f1766f7a28f21c1", 
					:first_name => "amar",
					:last_name => "nath", 
					:phone_number => 1234567890
					)
	end
	
	 it { should have_many(:friends)}
	 it { should have_many(:myactivcontacts)}
         it { should have_many(:activcontactsphones)}
	 it { should have_many(:messages)}
         it { should have_many(:mysearches)}
	 it { should validate_presence_of(:email) }
    
 	
 end
 
