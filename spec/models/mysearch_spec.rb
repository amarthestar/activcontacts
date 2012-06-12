require 'spec_helper'

describe Mysearch do
  
	  before(:each) do
	  @mysearch = Mysearch.new (
						:id => "",
						:search_content => "chilambu.it@gmail.com"
						)
	  end
	  
	  it "Should have atleast one user" do
		 @mysearch.should belong_to(:user)
	 end
	 
		
 end
 