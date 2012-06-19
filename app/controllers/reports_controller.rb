class ReportsController < ApplicationController
#before_filter :authenticate_user!
#  load_and_authorize_resource
  
  # GET /reports
  # GET /reports.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @report }
    end
  end

  # GET /reports/1
  # GET /reports/1.json
  def monthly
  
    if (params.has_key?(:month) && params.has_key?(:year))
        @month = params[:month]
        @year = params[:year]
    else
        @month = Time.new.month
        @year = Time.new.year
    end
    
    respond_to do |format|
      format.html # monthly.html.erb
      #format.json { render json: @report }
    end
  end
end

