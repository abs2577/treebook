class StatusUsersController < ApplicationController
  # GET /status_users
  # GET /status_users.json
  def index
    @status_users = StatusUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_users }
    end
  end

  # GET /status_users/1
  # GET /status_users/1.json
  def show
    @status_user = StatusUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_user }
    end
  end

  # GET /status_users/new
  # GET /status_users/new.json
  def new
    @status_user = StatusUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_user }
    end
  end

  # GET /status_users/1/edit
  def edit
    @status_user = StatusUser.find(params[:id])
  end

  # POST /status_users
  # POST /status_users.json
  def create
    @status_user = StatusUser.new(params[:status_user])

    respond_to do |format|
      if @status_user.save
        format.html { redirect_to @status_user, notice: 'Status user was successfully created.' }
        format.json { render json: @status_user, status: :created, location: @status_user }
      else
        format.html { render action: "new" }
        format.json { render json: @status_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_users/1
  # PUT /status_users/1.json
  def update
    @status_user = StatusUser.find(params[:id])

    respond_to do |format|
      if @status_user.update_attributes(params[:status_user])
        format.html { redirect_to @status_user, notice: 'Status user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_users/1
  # DELETE /status_users/1.json
  def destroy
    @status_user = StatusUser.find(params[:id])
    @status_user.destroy

    respond_to do |format|
      format.html { redirect_to status_users_url }
      format.json { head :no_content }
    end
  end
end
