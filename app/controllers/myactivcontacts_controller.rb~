class MyactivcontactsController < ApplicationController
  before_filter :authenticate_user!
    def index
       @myactivcontact=Myactivcontact.find_all_by_user_id(current_user.id)
    end
  
    def new
      @myactivcontact = Myactivcontact.new
    end

    def create
            @myactivcontact = Myactivcontact.new(params[:myactivcontact])
	    if params[:myactivcontact][:e_mail].present?
		  puts @myactivcontact.save
                   redirect_to '/myactivcontacts/index'
             else
                   redirect_to '/myactivcontacts/new'
            end
    end

    def destroy
    @myactivcontact = Myactivcontact.find_by_id(params[:id])
    @myactivcontact.destroy
     redirect_to '/myactivcontacts/index'
      	    
    end
     
   end


