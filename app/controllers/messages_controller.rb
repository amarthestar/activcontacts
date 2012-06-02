class MessagesController < ApplicationController
	before_filter :authenticate_user!
	def inbox
		@message=Message.find_all_by_receiver(current_user.id)
		@rec=Array.new
		@message.each do |msg|
			a=User.find_by_id(msg.sender)
			@rec<< a.first_name
		 end
	end
	def write
		
		@sender=current_user.id
		@receiver=User.find_by_id(params[:id])
	end
	def sendmessage
		@msg=Message.new(params[:message])
		@msg.save
		redirect_to '/inbox'
	end
	def outbox
		@mesg=Message.find_all_by_sender(current_user.id)
		@rec=Array.new
		@mesg.each do |msg|
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
	@mes=Message.find_by_id(params[:id])
	 p =@mes.sender
	 @finfo=User.find_all_by_id(p)	
	end
	def reply 
	   @rep=Message.find_by_id(params[:id])
	   @sen=@rep.receiver
	   @rec=@rep.sender
	   @user=current_user.id
	   @use=User.find_by_id(@rec)
        end	
        def destroy
	@message = Message.find_by_id(params[:id])
        @message.destroy
        redirect_to '/inbox'
        end
        def destroyout
	@message = Message.find_by_id(params[:id])
        @message.destroy
        redirect_to '/outbox'
      	end
      
end
