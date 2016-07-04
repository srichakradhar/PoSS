class MessagesController < ApplicationController
  
  before_action :require_user, only: [:index, :show]

  def index
    @messages = Message.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end
  
  def new
    @message = Message.new
  end
  
  def create
		@message = Message.new(message_params.merge(:user_id => current_user.id))
		if @message.save 
		  redirect_to '/messages' 
		else 
		  render 'new' 
		end
	end
  
  private 
  def message_params 
    params.require(:message).permit(:content, :user_id) 
  end
end
