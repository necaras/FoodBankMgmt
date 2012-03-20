class RefagenciesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /refagencies
  # GET /refagencies.json
  def index
    @refagencies = Refagency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @refagencies }
    end
  end

  # GET /refagencies/1
  # GET /refagencies/1.json
  def show
    @refagency = Refagency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @refagency }
    end
  end

  # GET /refagencies/new
  # GET /refagencies/new.json
  def new
    @refagency = Refagency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @refagency }
    end
  end

  # GET /refagencies/1/edit
  def edit
    @refagency = Refagency.find(params[:id])
  end

  # POST /refagencies
  # POST /refagencies.json
  def create
    @refagency = Refagency.new(params[:refagency])

    respond_to do |format|
      if @refagency.save
        format.html { redirect_to @refagency, notice: 'Refagency was successfully created.' }
        format.json { render json: @refagency, status: :created, location: @refagency }
      else
        format.html { render action: "new" }
        format.json { render json: @refagency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /refagencies/1
  # PUT /refagencies/1.json
  def update
    @refagency = Refagency.find(params[:id])

    respond_to do |format|
      if @refagency.update_attributes(params[:refagency])
        format.html { redirect_to @refagency, notice: 'Refagency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @refagency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refagencies/1
  # DELETE /refagencies/1.json
  def destroy
    @refagency = Refagency.find(params[:id])
    @refagency.destroy

    respond_to do |format|
      format.html { redirect_to refagencies_url }
      format.json { head :no_content }
    end
  end
end
