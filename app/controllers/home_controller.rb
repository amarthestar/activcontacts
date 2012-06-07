class HomeController < ApplicationController
  def index
     @mysearch=Mysearch.find(:all, :order => "id desc", :limit => 5)#taking last five records for mysearches table & displying in the home page
  end
  
  def aboutus
  end
   
  def search
  if @user=User.find_by_email(params[:name]) 
			@tem=@user.first_name
		elsif @u=Myactivcontact.find_by_e_mail(params[:name])
			@userid=@u.user_id
			@user=User.find_by_id(@userid)
			@tem=@user.first_name
			
		elsif @user=User.find_by_phone_number(params[:name])
			@tem=@user.first_name if @user.present?
	        elsif	@u=Activcontactsphone.find_by_phon_number(params[:name])
			@userid=@u.user_id
			@user=User.find_by_id(@userid)
			@tem=@user.first_name
		else
			@user=""
		end


  
  end
  end
