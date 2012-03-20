class IndonationsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /indonations
  # GET /indonations.json
  def index
    @indonations = Indonation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @indonations }
    end
  end

  # GET /indonations/1
  # GET /indonations/1.json
  def show
    @indonation = Indonation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @indonation }
    end
  end

  # GET /indonations/new
  # GET /indonations/new.json
  def new
    @indonation = Indonation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @indonation }
    end
  end

  # GET /indonations/1/edit
  def edit
    @indonation = Indonation.find(params[:id])
  end

  # POST /indonations
  # POST /indonations.json
  def create
    @indonation = Indonation.new(params[:indonation])

    respond_to do |format|
      if @indonation.save
        format.html { redirect_to @indonation, notice: 'Indonation was successfully created.' }
        format.json { render json: @indonation, status: :created, location: @indonation }
      else
        format.html { render action: "new" }
        format.json { render json: @indonation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /indonations/1
  # PUT /indonations/1.json
  def update
    @indonation = Indonation.find(params[:id])

    respond_to do |format|
      if @indonation.update_attributes(params[:indonation])
        format.html { redirect_to @indonation, notice: 'Indonation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @indonation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indonations/1
  # DELETE /indonations/1.json
  def destroy
    @indonation = Indonation.find(params[:id])
    @indonation.destroy

    respond_to do |format|
      format.html { redirect_to indonations_url }
      format.json { head :no_content }
    end
  end
end
