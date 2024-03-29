class RidesController < ApplicationController
  #switch to CanCan in the future
  before_filter :authenticate_user!
  
  # GET /rides
  # GET /rides.json
  def index
    @rides = current_user.rides

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rides }
    end
  end

  # GET /rides/1
  # GET /rides/1.json
  def show
    @ride = Ride.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ride }
    end
  end

  # GET /rides/new
  # GET /rides/new.json
  def new
    @ride = Ride.new
    @user_bikes = current_user.bikes
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ride }
    end
  end

  # GET /rides/1/edit
  def edit
    @ride = Ride.find(params[:id])
    @user_bikes = current_user.bikes
  end

  # POST /rides
  # POST /rides.json
  def create
    @ride = Ride.new(params[:ride])
    @ride.user = current_user
    
    respond_to do |format|
      if @ride.save
        format.html { redirect_to @ride, notice: 'Ride was successfully created.' }
        format.json { render json: @ride, status: :created, location: @ride }
      else
        format.html { render action: "new" }
        format.json { render json: @ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rides/1
  # PUT /rides/1.json
  def update
    @ride = Ride.find(params[:id])

    respond_to do |format|
      if @ride.update_attributes(params[:ride])
        format.html { redirect_to @ride, notice: 'Ride was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rides/1
  # DELETE /rides/1.json
  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy

    respond_to do |format|
      format.html { redirect_to rides_url }
      format.json { head :no_content }
    end
  end
end
