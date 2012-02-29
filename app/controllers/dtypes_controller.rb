class DtypesController < ApplicationController
  # GET /dtypes
  # GET /dtypes.json
  def index
    @dtypes = Dtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dtypes }
    end
  end

  # GET /dtypes/1
  # GET /dtypes/1.json
  def show
    @dtype = Dtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dtype }
    end
  end

  # GET /dtypes/new
  # GET /dtypes/new.json
  def new
    @dtype = Dtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dtype }
    end
  end

  # GET /dtypes/1/edit
  def edit
    @dtype = Dtype.find(params[:id])
  end

  # POST /dtypes
  # POST /dtypes.json
  def create
    @dtype = Dtype.new(params[:dtype])

    respond_to do |format|
      if @dtype.save
        format.html { redirect_to @dtype, notice: 'Dtype was successfully created.' }
        format.json { render json: @dtype, status: :created, location: @dtype }
      else
        format.html { render action: "new" }
        format.json { render json: @dtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dtypes/1
  # PUT /dtypes/1.json
  def update
    @dtype = Dtype.find(params[:id])

    respond_to do |format|
      if @dtype.update_attributes(params[:dtype])
        format.html { redirect_to @dtype, notice: 'Dtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dtypes/1
  # DELETE /dtypes/1.json
  def destroy
    @dtype = Dtype.find(params[:id])
    @dtype.destroy

    respond_to do |format|
      format.html { redirect_to dtypes_url }
      format.json { head :no_content }
    end
  end
end
