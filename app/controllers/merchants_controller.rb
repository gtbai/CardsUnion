class MerchantsController < ApplicationController
  # GET /merchants
  # GET /merchants.json
  def index
    @merchants = Merchant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @merchants }
    end
  end

  # GET /merchants/1
  # GET /merchants/1.json
  def show
    if current_user.user_id.nil?
      @merchant = Merchant.new({:store_name => "", :store_type => "",
      :introduction => "", :address => ""})
      @merchant.save(validate: false)
      current_user.update_attribute(:user_id, @merchant.id)
      current_user.update_attribute(:user_type, "Merchant")
      @account = @merchant.account
    else
      unless params.has_key?(:format)
        @merchant = current_user.user
      else
        @merchant = Merchant.find(params[:format])
      end
      @account = @merchant.account
    end
  end

  # Maybe it is useful for admins.
  def new
    @merchant = Merchant.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @merchant }
    end
  end

  def edit
    @merchant = Merchant.find(params[:format])
    if (current_user.user_type!="Merchant") or (current_user.user!= @merchant)
      redirect_to @merchant, notice: "You can not edit other merchants' store profile!"
    end
    @account = @merchant.account
  end

  # Maybe it is useful for admins.
  def create
    @merchant = Merchant.new(params[:merchant])

    respond_to do |format|
      if @merchant.save
        format.html { redirect_to @merchant, notice: 'Merchant was successfully created.' }
        format.json { render json: @merchant, status: :created, location: @merchant }
      else
        format.html { render action: "new" }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @merchant = Merchant.find(params[:format])
    @account = @merchant.account
    if @merchant.update_attributes(params[:merchant])
      phone = params[:account][:phone]
      if phone =~ /\A\d+\Z/
        # if phone.length==7 || phone.length==11
          unless (Account.exists?(:phone => phone)) && (phone != @account.phone)
            @account.update_attribute(:phone, phone)
            redirect_to @merchant, notice: 'Information was successfully updated.' and return
          else
            @account.errors.add(:phone, 'has been used, please change another one')
          end 
        # else
        #   @account.errors.add(:phone, 'does not seem in normal length')
        # end
      else
        @account.errors.add(:phone, 'does not look like a proper phone number')
      end
    end
    render action: "edit"
  end

  # DELETE /merchants/1
  # DELETE /merchants/1.json
  def destroy
    @merchant = Merchant.find(params[:id])
    @merchant.destroy

    respond_to do |format|
      format.html { redirect_to merchants_url }
      format.json { head :no_content }
    end
  end
end
