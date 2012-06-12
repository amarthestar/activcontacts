require 'spec_helper'

describe Friend do
  
	  before(:each) do
	  @friend = Friend.new (
						:id => "",
						:first_name => "ranjith",
						:last_name => "palani",
						:nick_name => "hero",
						:phone_number=>"9855666566"
					     )
	  end
	  
	  it "Should have atleast one user" do
		 @friend.should belong_to(:user)
	 end
	 
		
 end
 
