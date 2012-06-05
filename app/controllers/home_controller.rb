class HomeController < ApplicationController
  def index
     @mysearch=Mysearch.find(:all, :order => "id desc", :limit => 5)#taking last five records for mysearches table & displying in the home page
  end
  
  def aboutus
  end
   
  def search
  if @user=User.find_by_email(params[:name])#getting the params(name or email) as :name from the search field and finding in db and put in user instance variable
  else puts @user=User.find_by_phone_number(params[:name])
   end
  end
  
  end

