require 'spec_helper'

describe Activcontactsphone do
  
	  before(:each) do
	  @activcontactsphone = Activcontactsphone.new (
						:id => "",
						:phon_number=> "9876543210",
						:status => "1"
					     )
	  end
	  
	  it "Should have atleast one user" do
		 @activcontactsphone.should belong_to(:user)
	 end
	 
		
 end
 