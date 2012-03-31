class OutdonationsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  # GET /outdonations
  # GET /outdonations.json
  def index
    @outdonations = Outdonation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outdonations }
    end
  end

  # GET /outdonations/1
  # GET /outdonations/1.json
  def show
    @outdonation = Outdonation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outdonation }
    end
  end

  # GET /outdonations/new
  # GET /outdonations/new.json
  def new
    @outdonation = Outdonation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outdonation }
    end
  end

  # GET /outdonations/1/edit
  def edit
    @outdonation = Outdonation.find(params[:id])
  end

  # POST /outdonations
  # POST /outdonations.json
  def create
    @outdonation = Outdonation.new(params[:outdonation])

    respond_to do |format|
      if @outdonation.save
        format.html { redirect_to @outdonation, notice: 'Outdonation was successfully created.' }
        format.json { render json: @outdonation, status: :created, location: @outdonation }
      else
        format.html { render action: "new" }
        format.json { render json: @outdonation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outdonations/1
  # PUT /outdonations/1.json
  def update
    @outdonation = Outdonation.find(params[:id])

    respond_to do |format|
      if @outdonation.update_attributes(params[:outdonation])
        format.html { redirect_to @outdonation, notice: 'Outdonation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @outdonation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outdonations/1
  # DELETE /outdonations/1.json
  def destroy
    @outdonation = Outdonation.find(params[:id])
    @outdonation.destroy

    respond_to do |format|
      format.html { redirect_to outdonations_url }
      format.json { head :no_content }
    end
  end
end
