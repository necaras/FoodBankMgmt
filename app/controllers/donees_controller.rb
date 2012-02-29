class DoneesController < ApplicationController
  # GET /donees
  # GET /donees.json
  def index
    @donees = Donee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donees }
    end
  end

  # GET /donees/1
  # GET /donees/1.json
  def show
    @donee = Donee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @donee }
    end
  end

  # GET /donees/new
  # GET /donees/new.json
  def new
    @donee = Donee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donee }
    end
  end

  # GET /donees/1/edit
  def edit
    @donee = Donee.find(params[:id])
  end

  # POST /donees
  # POST /donees.json
  def create
    @donee = Donee.new(params[:donee])

    respond_to do |format|
      if @donee.save
        format.html { redirect_to @donee, notice: 'Donee was successfully created.' }
        format.json { render json: @donee, status: :created, location: @donee }
      else
        format.html { render action: "new" }
        format.json { render json: @donee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /donees/1
  # PUT /donees/1.json
  def update
    @donee = Donee.find(params[:id])

    respond_to do |format|
      if @donee.update_attributes(params[:donee])
        format.html { redirect_to @donee, notice: 'Donee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @donee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donees/1
  # DELETE /donees/1.json
  def destroy
    @donee = Donee.find(params[:id])
    @donee.destroy

    respond_to do |format|
      format.html { redirect_to donees_url }
      format.json { head :no_content }
    end
  end
end
