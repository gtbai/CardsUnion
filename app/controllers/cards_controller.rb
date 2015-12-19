class CardsController < ApplicationController
  include AbstractController::Callbacks
  include ApplicationHelper
  before_filter :require_user, only: [:index, :show]
  before_filter :require_merchant, only: [:new, :destroy]

  def index
    @cards = current_user.user.cards
    respond_to do |format|
      format.html do 
        if current_user_type == 'Merchant'
          render 'merchant_index'
        else 
          render 'consumer_index'
        end
      end
    end
  end

  def show
    @card = Card.find(params[:id])
    own_card?(@card)
    respond_to do |format|
      format.html do
        if current_user_type == 'Merchant'
          render 'merchant_show'
        else 
          render 'consumer_show'
        end
      end
    end
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params[:card])
    consumer_account = Account.find_by_phone(params[:consumer]) #find account first
    @card.consumer = consumer_account.user if consumer_account
    @card.merchant = current_user.user
    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to cards_url }
      format.json { head :no_content }
    end
  end

  def autocomplete
    accounts = Account.all
    accounts = accounts.select {|account| account.phone.start_with?params[:query]}
    render json: accounts.map(&:phone).uniq
  end
end
