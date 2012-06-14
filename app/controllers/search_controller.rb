class SearchController < ApplicationController
  before_filter :authenticate_user!
	def index
		 #@user=User.find_by_email(params[:name])
	end
  
	def afsearch
		@mysearch=Mysearch.new   #saving the searches in mysearches table
                @mysearch.user_id=current_user.id
                @mysearch.search_content=params[:name]
		@mysearch.save
		if @user=User.find_by_email(params[:name]) #searching the paramerter in users,myactivcontacts,activcontacts phone
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
	 
        def mysearches  #getting mysearch details
		@my=Mysearch.find_all_by_user_id(current_user.id)
		@name=Array.new
		@my.each do |s|
			a=s.search_content.to_i  #converting the search content into integer if search content is string value==0
			if a==0 
				n=User.find_by_email(s.search_content)	
				m=Myactivcontact.find_by_e_mail(s.search_content)
				if n.present?	
					@name<<n.first_name 
				elsif m.present?
					name=User.find_by_id(m.user_id).first_name
					@name<<name
				else
					@name<<"Not in DB"
				end
			else
				p=User.find_by_phone_number(a)
				q=Activcontactsphone.find_by_phon_number(s.search_content)
				if p.present?	
				        @name<<p.first_name 
				elsif q.present?
					name=User.find_by_id(q.user_id).first_name
					@name<<name
				else
					@name<<"NOt in DB"
				end
			end
              end
        end  
        def destroy
        @mysearch = Mysearch.find_by_id(params[:id])
        @mysearch.destroy if @mysearch.present?
        redirect_to '/search/mysearches'
end

        def searchmine #getting who are all search for my number
          @mysearch=Mysearch.all(:conditions => ["search_content LIKE ? OR search_content LIKE ?", current_user.email, "#{current_user.phone_number}"])
         @searchmine=Array.new
         @mysearch.each do |s|
		@searchmine<<s.user

	end
      end
end

 


