class MessagesController < ApplicationController
  include ApplicationHelper
  # GET /messages
  def index
    @merchant = Merchant.find(params[:format])
    @messages = @merchant.messages
    render :index
  end

  # GET /messages/1
  def show
    @message = Message.find(params[:id])
    render :show    
  end

  # GET /messages/new
  def new
    @merchant = Merchant.find(params[:format])
    @message = @merchant.messages.new
    render :new
  end

  # POST /messages
  def create
    @merchant = Merchant.find(params[:format])
    @message = @merchant.messages.new(params[:message])
    if (current_user_type == "Consumer" && current_user.user.merchants.include?(@merchant))
      @message.consumer = current_user.user # Set the consumer_id of this message
      if @message.save
        redirect_to @merchant, :notice => "Your complaint was sent to the merchant successfully."
      else
        render :new
      end
    else
      redirect_to @message, :notice => "Only consumers who have a card in this merchant can do this!"
    end
  end
end
