require "spec_helper"
describe SearchController do
	describe "routing" do	
		it "routes to #afsearch" do
			 get("search/afsearch").should route_to("search#afsearch")
		 end
		
		  it "routes to #index" do
			 get("aflogin/search").should route_to("search#index")
		 end
		  it "routes to #mysearches" do
			 get("search/mysearches").should route_to("search#mysearches")
		 end
		   it "routes to #searchmine" do
			 get("search/searchmine").should route_to("search#searchmine")
		 end
		  it "routes to #destroy" do
			 delete("search/destroy").should route_to("search#destroy")
		 end

	end
end


  