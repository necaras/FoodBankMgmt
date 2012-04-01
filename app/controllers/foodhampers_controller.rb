class FoodhampersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  # GET /foodhampers
  # GET /foodhampers.json
  def index
    @foodhampers = Foodhamper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foodhampers }
    end
  end

  # GET /foodhampers/1
  # GET /foodhampers/1.json
  def show
    @foodhamper = Foodhamper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foodhamper }
    end
  end

  # GET /foodhampers/new
  # GET /foodhampers/new.json
  def new
    @foodhamper = Foodhamper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foodhamper }
    end
  end

  # GET /foodhampers/1/edit
  def edit
    @foodhamper = Foodhamper.find(params[:id])
  end

  # POST /foodhampers
  # POST /foodhampers.json
  def create
    @foodhamper = Foodhamper.new(params[:foodhamper])

    respond_to do |format|
      if @foodhamper.save
        format.html { redirect_to @foodhamper, notice: 'Foodhamper was successfully created.' }
        format.json { render json: @foodhamper, status: :created, location: @foodhamper }
      else
        format.html { render action: "new" }
        format.json { render json: @foodhamper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foodhampers/1
  # PUT /foodhampers/1.json
  def update
    @foodhamper = Foodhamper.find(params[:id])

    respond_to do |format|
      if @foodhamper.update_attributes(params[:foodhamper])
        format.html { redirect_to @foodhamper, notice: 'Foodhamper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foodhamper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodhampers/1
  # DELETE /foodhampers/1.json
  def destroy
    @foodhamper = Foodhamper.find(params[:id])
    @foodhamper.destroy

    respond_to do |format|
      format.html { redirect_to foodhampers_url }
      format.json { head :no_content }
    end
  end
end
