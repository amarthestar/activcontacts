class SearchController < ApplicationController
  before_filter :authenticate_user!
	def index
		 #@user=User.find_by_email(params[:name])
	end
  
	def afsearch
		@mysearch=Mysearch.new
                @mysearch.user_id=current_user.id
                @mysearch.search_content=params[:name]
		@mysearch.save
		if @user=User.find_by_email(params[:name]) 
			@tem=@user.first_name
		else @user=User.find_by_phone_number(params[:name])
			@tem=@user.first_name if @user.present?
		end
	end
	
        def mysearches
		@my=Mysearch.find_all_by_user_id(current_user.id)
		@name=Array.new
		@my.each do |s|
			a=s.search_content.to_i
			if a==0 
				n=User.find_by_email(s.search_content)	
				if n.present?	
					@name<<n.first_name 
				else
					@name<<"Not in DB"
				end
			else
				m=User.find_by_phone_number(a)
				if m.present?	
				        @name<<m.first_name 
				else
					@name<<"NOt in DB"
				end
			end
              end
        end  
        def destroy
        @mysearch = Mysearch.find_by_id(params[:id])
        @mysearch.destroy
        redirect_to '/search/mysearches'
end

        def searchmine
          @mysearch=Mysearch.all(:conditions => ["search_content LIKE ? OR search_content LIKE ?", current_user.email, "#{current_user.phone_number}"])
         @searchmine=Array.new
         @mysearch.each do |s|
		@searchmine<<s.user
		puts s.created_at
	end
      end
end




