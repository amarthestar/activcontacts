class HomeController < ApplicationController
  def index
     @mysearch=Mysearch.find(:all, :order => "id desc", :limit => 5)#taking last five records for mysearches table & displying in the home page
  end
  
  def aboutus
  end
   
  def search
  if @user=User.find_by_email(params[:name])   #Finding the record in the user table with email ,which is taken as a parameter(params:name]) when it searched in search others field and keeping in the instance variable @user 
			@tem=@user.first_name    #Keeping the first name of the record which is in @user in @tem varaible 
		elsif @u=Myactivcontact.find_by_e_mail(params[:name]) #Finding the record in the myactivcontact table with email which is taken as a parameter(params:name]) when it is searched in search others field and keeping in the instance variable @u when it is not matched in user table
			@userid=@u.user_id   # Keeping the user_id of the record which is in @u in @userid varaible 
			@userid=@u.user_id   #finding the record in the user table by id (which matches user_id) in myactivcontact table
			@user=User.find_by_id(@userid)   #finding the record in the user table by id (which matches user_id) in myactivcontact table
			@tem=@user.first_name    #Keeping the first name of the record which is in @user in @tem varaible 
			
		elsif @user=User.find_by_phone_number(params[:name]) #Finding the record in the user table with phone number which is taken as a parameter(params:name]) when it is searched in search others field and keeping in the instance variable @user 
			@tem=@user.first_name if @user.present?
	        elsif	@u=Activcontactsphone.find_by_phon_number(params[:name])  #Finding the record in the activcontactsphone table with phone number which is taken as a parameter(params:name]) when it is searched in search others field and keeping in the instance variable @u
			@userid=@u.user_id
			@user=User.find_by_id(@userid)
			@tem=@user.first_name
		else
			@user=""  #if [params:name] not matches in user,myactivcontacts,activconatctsphone keeping the instance variable as empty.
		end


  
  end
  end
 
