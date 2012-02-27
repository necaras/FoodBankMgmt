class FstatesController < ApplicationController
  # GET /fstates
  # GET /fstates.json
  def index
    @fstates = Fstate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fstates }
    end
  end

  # GET /fstates/1
  # GET /fstates/1.json
  def show
    @fstate = Fstate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fstate }
    end
  end

  # GET /fstates/new
  # GET /fstates/new.json
  def new
    @fstate = Fstate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fstate }
    end
  end

  # GET /fstates/1/edit
  def edit
    @fstate = Fstate.find(params[:id])
  end

  # POST /fstates
  # POST /fstates.json
  def create
    @fstate = Fstate.new(params[:fstate])

    respond_to do |format|
      if @fstate.save
        format.html { redirect_to @fstate, notice: 'Fstate was successfully created.' }
        format.json { render json: @fstate, status: :created, location: @fstate }
      else
        format.html { render action: "new" }
        format.json { render json: @fstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fstates/1
  # PUT /fstates/1.json
  def update
    @fstate = Fstate.find(params[:id])

    respond_to do |format|
      if @fstate.update_attributes(params[:fstate])
        format.html { redirect_to @fstate, notice: 'Fstate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fstates/1
  # DELETE /fstates/1.json
  def destroy
    @fstate = Fstate.find(params[:id])
    @fstate.destroy

    respond_to do |format|
      format.html { redirect_to fstates_url }
      format.json { head :no_content }
    end
  end
end
