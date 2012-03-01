class VtypesController < ApplicationController
  # GET /vtypes
  # GET /vtypes.json
  def index
    @vtypes = Vtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vtypes }
    end
  end

  # GET /vtypes/1
  # GET /vtypes/1.json
  def show
    @vtype = Vtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vtype }
    end
  end

  # GET /vtypes/new
  # GET /vtypes/new.json
  def new
    @vtype = Vtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vtype }
    end
  end

  # GET /vtypes/1/edit
  def edit
    @vtype = Vtype.find(params[:id])
  end

  # POST /vtypes
  # POST /vtypes.json
  def create
    @vtype = Vtype.new(params[:vtype])

    respond_to do |format|
      if @vtype.save
        format.html { redirect_to @vtype, notice: 'Vtype was successfully created.' }
        format.json { render json: @vtype, status: :created, location: @vtype }
      else
        format.html { render action: "new" }
        format.json { render json: @vtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vtypes/1
  # PUT /vtypes/1.json
  def update
    @vtype = Vtype.find(params[:id])

    respond_to do |format|
      if @vtype.update_attributes(params[:vtype])
        format.html { redirect_to @vtype, notice: 'Vtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vtypes/1
  # DELETE /vtypes/1.json
  def destroy
    @vtype = Vtype.find(params[:id])
    @vtype.destroy

    respond_to do |format|
      format.html { redirect_to vtypes_url }
      format.json { head :no_content }
    end
  end
end
