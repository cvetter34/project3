'require pry'
class MessagesController < ApplicationController

  before_filter :set_user

  def index
    @messages = if params[:id]
      Message.where("id in (?)", params[:id].split(','))
    else
      Message.all
    end
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sender_id = @user.id
    if @message.save
      flash[:notice] = "Message has been sent"
      redirect_to messages_url
    else
      render :action => :new
    end
  end

  def show
    # @message = Message.readingmessage(params[:id].@user.user_id)
    # @message = Message.find(params[:id])
  end


  private

  def message_params
    params.require(:message).permit(:id, :subject, :body, :sender_id, :recipient_id, :read_at)
  end

  def set_user
    @user = current_user
  end

end

