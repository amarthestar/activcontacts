require "spec_helper"
describe MyactivcontactsphonesController do
	describe "routing" do	
		it "routes to #phonenew" do
			 get("/myactivcontactsphones/phonenew").should route_to("myactivcontactsphones#phonenew")
		 end
		 it "routes to #phcreate" do
			 post("/myactivcontactsphones/phcreate").should route_to("myactivcontactsphones#phcreate")
		 end
		  it "routes to #phoneindex" do
			 get("/myactivcontactsphones/phoneindex").should route_to("myactivcontactsphones#phoneindex")
		 end
		  it "routes to #destroy" do
			 delete("/myactivcontactsphones/destroyph").should route_to("myactivcontactsphones#destroyph")
		 end

		 
	end
end
 

