class ConsumersController < ApplicationController
  # GET /consumers
  # GET /consumers.json
  def index
    @consumers = consumer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consumers }
    end
  end

  # GET /consumers/1
  # GET /consumers/1.json
  def show
    if current_user.user_id.nil?
      @consumer = Consumer.new(nickname: "", gender: "")
      @consumer.save(validate: false)
      current_user.update_attribute(:user_id, @consumer.id)
      @account = @consumer.account
    else
      @consumer = current_user.user
      @account = @consumer.account
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consumer }
    end
  end

  # GET /consumers/new
  # GET /consumers/new.json
  def new
    @consumer = consumer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consumer }
    end
  end

  # GET /consumers/1/edit
  def edit
    @consumer = consumer.find(params[:id])
  end

  # POST /consumers
  # POST /consumers.json
  def create
    @consumer = consumer.new(params[:consumer])

    respond_to do |format|
      if @consumer.save
        format.html { redirect_to @consumer, notice: 'consumer was successfully created.' }
        format.json { render json: @consumer, status: :created, location: @consumer }
      else
        format.html { render action: "new" }
        format.json { render json: @consumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consumers/1
  # PUT /consumers/1.json
  def update
    @consumer = consumer.find(params[:id])

    respond_to do |format|
      if @consumer.update_attributes(params[:consumer])
        format.html { redirect_to @consumer, notice: 'consumer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consumer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumers/1
  # DELETE /consumers/1.json
  def destroy
    @consumer = consumer.find(params[:id])
    @consumer.destroy

    respond_to do |format|
      format.html { redirect_to consumers_url }
      format.json { head :no_content }
    end
  end
end
