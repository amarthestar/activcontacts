class UserMailer < ActionMailer::Base
  
default :from => "amarnaths1985@gmail.com"
 

  def send_email(user)
     @user = user
       mail(:to => user.email, :subject => "Registered")  

   end
 end
