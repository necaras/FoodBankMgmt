class RefagencycategoriesController < ApplicationController
  # GET /refagencycategories
  # GET /refagencycategories.json
  def index
    @refagencycategories = Refagencycategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @refagencycategories }
    end
  end

  # GET /refagencycategories/1
  # GET /refagencycategories/1.json
  def show
    @refagencycategory = Refagencycategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @refagencycategory }
    end
  end

  # GET /refagencycategories/new
  # GET /refagencycategories/new.json
  def new
    @refagencycategory = Refagencycategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @refagencycategory }
    end
  end

  # GET /refagencycategories/1/edit
  def edit
    @refagencycategory = Refagencycategory.find(params[:id])
  end

  # POST /refagencycategories
  # POST /refagencycategories.json
  def create
    @refagencycategory = Refagencycategory.new(params[:refagencycategory])

    respond_to do |format|
      if @refagencycategory.save
        format.html { redirect_to @refagencycategory, notice: 'Refagencycategory was successfully created.' }
        format.json { render json: @refagencycategory, status: :created, location: @refagencycategory }
      else
        format.html { render action: "new" }
        format.json { render json: @refagencycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /refagencycategories/1
  # PUT /refagencycategories/1.json
  def update
    @refagencycategory = Refagencycategory.find(params[:id])

    respond_to do |format|
      if @refagencycategory.update_attributes(params[:refagencycategory])
        format.html { redirect_to @refagencycategory, notice: 'Refagencycategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @refagencycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refagencycategories/1
  # DELETE /refagencycategories/1.json
  def destroy
    @refagencycategory = Refagencycategory.find(params[:id])
    @refagencycategory.destroy

    respond_to do |format|
      format.html { redirect_to refagencycategories_url }
      format.json { head :no_content }
    end
  end
end
