class MyactivcontactsphonesController < ApplicationController
  before_filter :authenticate_user!
 def phoneindex
      @myactivcontact=Activcontactsphone.find_all_by_user_id(current_user.id)
    end

    def phonenew
       @myactivcontact = Activcontactsphone.new
    end
    def phcreate
            @myactivcontact = Activcontactsphone.new(params[:activcontactsphone])
		     @myactivcontact 
	                 if params[:activcontactsphone][:phon_number].present?
                           @myactivcontact.save
                   redirect_to '/myactivcontactsphones/phoneindex'
             else
                   redirect_to '/myactivcontactsphones/phonenew'
            end
    end
     
    
    def destroyph
    @myactivcontact = Activcontactsphone.find_by_id(params[:id])
    @myactivcontact.destroy if @myactivcontact.present?
    redirect_to '/myactivcontactsphones/phoneindex'
      	    
    end
end
