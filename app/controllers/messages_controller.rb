class MessagesController < ApplicationController
	before_filter :authenticate_user!
	def inbox
		@message=Message.find_all_by_receiver(current_user.id)#Find all messages from messages table where receiver id =current _user.id and keep in @message variable
		@rec=Array.new #create a empty array
		@message.each do |msg| #Looping each record and finding it's corresponding record in users table with sender id
			a=User.find_by_id(msg.sender)
			@rec<< a.first_name  #appending first name in @rec
		 end
	end
	def write
		
		@sender=current_user.id
		@receiver=User.find_by_id(params[:id]) #finding the record from users table by id(getting the id as params from afsearch page)and place in @receiver variable
	end
	def sendmessage
		@msg=Message.new(params[:message])#this is the create method getting params[:message] from write page and keep it in @msg variable 
		@msg.save 
		redirect_to '/inbox'
	end
	def outbox
		@mesg=Message.find_all_by_sender(current_user.id)#Find all messages from messages table where sender_id=current _user.id and keep in @message variable
		@rec=Array.new #create a empty array
		@mesg.each do |msg| #Looping each record and finding it's corresponding record in users table with receiver id
			a=User.find_by_id(msg.receiver)
			@rec<< a.first_name
		end
	end
	def msgout
		@msg=Message.find_by_id(params[:id])    
		
	end
	def msgin
		@msg=Message.find_by_id(params[:id])
	end
	def friendinfo
	@mes=Message.find_by_id(params[:id]) #getting params from inbox page
	 p =@mes.sender
	 @finfo=User.find_all_by_id(p)	
	end
	def reply 
	   @rep=Message.find_by_id(params[:id])  #getting params from inbox page
	   @sen=@rep.receiver
	   @rec=@rep.sender
	   @user=current_user.id
	   @use=User.find_by_id(@rec)
        end	
        def destroy
	@message = Message.find_by_id(params[:id])
        @message.destroy if @message.present?
        redirect_to '/inbox'
        end
        def destroyout
	@message = Message.find_by_id(params[:id])
        @message.destroy if @message.present?
        redirect_to '/outbox'
      	end
      
end
