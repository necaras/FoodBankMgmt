class VhoursController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  # GET /vhours
  # GET /vhours.json
  def index
    @vhours = Vhour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vhours }
    end
  end

  # GET /vhours/1
  # GET /vhours/1.json
  def show
    @vhour = Vhour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vhour }
    end
  end

  # GET /vhours/new
  # GET /vhours/new.json
  def new
    @vhour = Vhour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vhour }
    end
  end

  # GET /vhours/1/edit
  def edit
    @vhour = Vhour.find(params[:id])
  end

  # POST /vhours
  # POST /vhours.json
  def create
    @vhour = Vhour.new(params[:vhour])

    respond_to do |format|
      if @vhour.save
        format.html { redirect_to @vhour, notice: 'Vhour was successfully created.' }
        format.json { render json: @vhour, status: :created, location: @vhour }
      else
        format.html { render action: "new" }
        format.json { render json: @vhour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vhours/1
  # PUT /vhours/1.json
  def update
    @vhour = Vhour.find(params[:id])

    respond_to do |format|
      if @vhour.update_attributes(params[:vhour])
        format.html { redirect_to @vhour, notice: 'Vhour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vhour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vhours/1
  # DELETE /vhours/1.json
  def destroy
    @vhour = Vhour.find(params[:id])
    @vhour.destroy

    respond_to do |format|
      format.html { redirect_to vhours_url }
      format.json { head :no_content }
    end
  end
end
