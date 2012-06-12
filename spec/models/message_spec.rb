require 'spec_helper'

describe Message do
  
	  before(:each) do
	  @message = Message.new (
						:id => "",
						:subject => "hai",
						:message => "how are you"
					     )
	  end
	  
	  it "Should have atleast one user" do
		 @message.should belong_to(:user)
	 end
	 
		
 end
 