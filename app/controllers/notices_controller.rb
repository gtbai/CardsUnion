class NoticesController < ApplicationController
  include AbstractController::Callbacks
  include NoticesHelper
  before_filter :require_user, only: [:show]
  before_filter :require_merchant, only: [:new, :edit]

  def index
    @notices = Notice.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notices }
    end
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
    @notice = Notice.find(params[:id])
    @author = @notice.account
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/new
  # GET /notices/new.json
  def new
    @notice = Notice.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice }
    end
  end

  # GET /notices/1/edit
  def edit
    @notice = Notice.find(params[:id])
  end

  # POST /notices
  # POST /notices.json
  def create
    @notice = Notice.new(params[:notice])
    @notice.account_id = current_user.id
    respond_to do |format|
      if @notice.save 
        @followers = current_user.followers
        @followers.each do |follower|
           Account.find(follower.id).send_notice_information
        end
        format.html { redirect_to @notice, notice: 'Notice was successfully created.' }
        format.json { render json: @notice, status: :created, location: @notice }
      else
        format.html { render action: "new" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notices/1
  # PUT /notices/1.json
  def update
    @notice = Notice.find(params[:id])
    respond_to do |format|
      if @notice.update_attributes(params[:notice]) && created_by_current_user(@notice)
        format.html { redirect_to @notice, notice: 'Notice was successfully updated.' }
        format.json { head :no_content }
      else
        flash[:error] = "You are not the creator of this notice, so you cannot update it."
        format.html { render action: "edit" }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @notice = Notice.find(params[:id])
    if created_by_current_user(@notice)
      @notice.destroy
    end 
    respond_to do |format|
      format.html { redirect_to notices_url }
      format.json { head :no_content }
    end
  end
end