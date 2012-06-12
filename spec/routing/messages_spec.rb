
require "spec_helper"
describe MessagesController do
	describe "routing" do	
		it "routes to #inbox" do
			 get("/inbox").should route_to("messages#inbox")
		 end
		 it "routes to #phcreate" do
			 get("/outbox").should route_to("messages#outbox")
		 end
		  it "routes to #sendmessage" do
			 post("/messages/sendmessage").should route_to("messages#sendmessage")
		 end
		  it "routes to #destroy" do
			 delete("messages/destroy").should route_to("messages#destroy")
		 end
		  it "routes to #destroyout" do
			 delete("messages/destroyout").should route_to("messages#destroyout")
		 end

		 it "routes to #msgin" do
			{:put => "/msgin/1"}.should route_to(:controller => "messages", :action => "msgin", :id => "1")
		end	
		it "routes to #msgout" do
			{:put => "/msgout/1"}.should route_to(:controller => "messages", :action => "msgout", :id => "1")
		end	
		it "routes to #write" do
			{:put => "/write/1"}.should route_to(:controller => "messages", :action => "write", :id => "1")
		end	
		it "routes to #reply" do
			{:put => "/reply/1"}.should route_to(:controller => "messages", :action => "reply", :id => "1")
		end	
		it "routes to #friendinfo" do
			{:put => "/friendinfo/1"}.should route_to(:controller => "messages", :action => "friendinfo", :id => "1")
		end	
	end
end

  