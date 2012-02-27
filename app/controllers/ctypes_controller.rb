class CtypesController < ApplicationController
  # GET /ctypes
  # GET /ctypes.json
  def index
    @ctypes = Ctype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ctypes }
    end
  end

  # GET /ctypes/1
  # GET /ctypes/1.json
  def show
    @ctype = Ctype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ctype }
    end
  end

  # GET /ctypes/new
  # GET /ctypes/new.json
  def new
    @ctype = Ctype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ctype }
    end
  end

  # GET /ctypes/1/edit
  def edit
    @ctype = Ctype.find(params[:id])
  end

  # POST /ctypes
  # POST /ctypes.json
  def create
    @ctype = Ctype.new(params[:ctype])

    respond_to do |format|
      if @ctype.save
        format.html { redirect_to @ctype, notice: 'Ctype was successfully created.' }
        format.json { render json: @ctype, status: :created, location: @ctype }
      else
        format.html { render action: "new" }
        format.json { render json: @ctype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ctypes/1
  # PUT /ctypes/1.json
  def update
    @ctype = Ctype.find(params[:id])

    respond_to do |format|
      if @ctype.update_attributes(params[:ctype])
        format.html { redirect_to @ctype, notice: 'Ctype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ctype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ctypes/1
  # DELETE /ctypes/1.json
  def destroy
    @ctype = Ctype.find(params[:id])
    @ctype.destroy

    respond_to do |format|
      format.html { redirect_to ctypes_url }
      format.json { head :no_content }
    end
  end
end
