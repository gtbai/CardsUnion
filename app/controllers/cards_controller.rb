class CardsController < ApplicationController
  before_filter :require_merchant, only: [:new]
  # GET /cards
  # GET /cards.json
  def index
    @cards = current_user.user.cards
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    @card = Card.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @card }
    end
  end

  def new
    @card = Card.new
    @emails = Account.all.map(&:email).uniq
    #@accounts = @consumers.map { |consumer| consumer.account }
  end

  # GET /cards/1/edit
  def edit
    @card = Card.find(params[:id])
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(params[:card])
    @card.consumer = Account.find_by_phone(params[:consumer]).user
    # here maybe cannot fing a consumer
    @card.merchant = current_user.user
    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /cards/1
  # PUT /cards/1.json
  def update
    @card = Card.find(params[:id])

    respond_to do |format|
      if @card.update_attributes(params[:card])
        format.html { redirect_to @card, notice: 'Card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
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
    accounts = accounts.select {|account| account.phone.include?params[:query]}
    render json: accounts.map(&:phone).uniq
  end
end
