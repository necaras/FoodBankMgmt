class CnotesController < ApplicationController
  before_filter :authenticate_user!
  
    def create
        @client = Client.find(params[:client_id])
        @cnote = @client.cnotes.create(params[:cnote])
        redirect_to client_path(@client)
    end
    def destroy
        @client = Client.find(params[:client_id])
        @cnote = @client.cnotes.find(params[:id])
        @cnote.destroy
        redirect_to client_path(@client)
    end
end
