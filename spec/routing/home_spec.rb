require "spec_helper"
describe HomeController do
	describe "routing" do	
	
		 it "routes to #search" do
			get("home/search").should route_to("home#search")
		 end
		  it "routes to #index" do
			 get("home/index").should route_to("home#index")
		 end
		  it "routes to #index" do
			 get("home/aboutus").should route_to("home#aboutus")
		 end
		
		

	end
end


  