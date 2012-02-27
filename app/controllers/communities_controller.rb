class CommunitiesController < ApplicationController
  # GET /communities
  # GET /communities.json
  def index
    @communities = Community.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @communities }
    end
  end

  # GET /communities/1
  # GET /communities/1.json
  def show
    @community = Community.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @community }
    end
  end

  # GET /communities/new
  # GET /communities/new.json
  def new
    @community = Community.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @community }
    end
  end

  # GET /communities/1/edit
  def edit
    @community = Community.find(params[:id])
  end

  # POST /communities
  # POST /communities.json
  def create
    @community = Community.new(params[:community])

    respond_to do |format|
      if @community.save
        format.html { redirect_to @community, notice: 'Community was successfully created.' }
        format.json { render json: @community, status: :created, location: @community }
      else
        format.html { render action: "new" }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /communities/1
  # PUT /communities/1.json
  def update
    @community = Community.find(params[:id])

    respond_to do |format|
      if @community.update_attributes(params[:community])
        format.html { redirect_to @community, notice: 'Community was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communities/1
  # DELETE /communities/1.json
  def destroy
    @community = Community.find(params[:id])
    @community.destroy

    respond_to do |format|
      format.html { redirect_to communities_url }
      format.json { head :no_content }
    end
  end
end
