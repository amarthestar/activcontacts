require 'spec_helper'

describe Myactivcontact do
  
	  before(:each) do
	  @myactivcontact = Myactivcontact.new (
						:id => "",
						:e_mail => "chilait@gmail.com",
						:status => "1"
					     )
	  end
	  
	  it "Should have atleast one user" do
		 @myactivcontact.should belong_to(:user)
	 end
	 
		
 end
 