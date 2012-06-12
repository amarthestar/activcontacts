

require "spec_helper"
describe MyactivcontactsController do
	describe "routing" do	
		it "routes to #new" do
			 get("/myactivcontacts/new").should route_to("myactivcontacts#new")
		 end
		 it "routes to #create" do
			 post("/myactivcontacts/create").should route_to("myactivcontacts#create")
		 end
		  it "routes to #index" do
			 get("/myactivcontacts/index").should route_to("myactivcontacts#index")
		 end
		  it "routes to #destroy" do
			 delete("/myactivcontacts/destroy").should route_to("myactivcontacts#destroy")
		 end

		 
	end
end