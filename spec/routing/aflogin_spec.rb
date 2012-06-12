require "spec_helper"
describe AfloginController do
	describe "routing" do	
	
		 it "routes to #index" do
			 get("aflogin/index").should route_to("aflogin#index")
		 end
		

	end
end

