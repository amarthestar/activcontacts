class SearchController < ApplicationController
  before_filter :authenticate_user!
	def index
		 #@user=User.find_by_email(params[:name])
	end
  
	def afsearch
		
		if @user=User.find_by_email(params[:name]) 
		     @tem=@user.first_name
			
		else @user=User.find_by_phone_number(params[:name])
		      @tem=@user.first_name if @user.present?

		end
	end
end




