class HomeController < ApplicationController
  def index
     @mysearch=Mysearch.find(:all, :order => "id desc", :limit => 5)
     puts @mysearch.inspect
  end
  
  def blog
  end
   
  def search
  p params[:name]
  if @user=User.find_by_email(params[:name])
  else puts @user=User.find_by_phone_number(params[:name])
   end
  end
  
  end

