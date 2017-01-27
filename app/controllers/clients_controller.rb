class ClientsController < ApplicationController

  def new
  @technpassport = Technpassport.find(params[:id])
  @client = Client.new(name: @technpassport[:customer], phone: @technpassport[:phone])
  end

  def create
    #@technpassport = Technpassport.find(params[:id])
    #@client = Client.new(name: @technpassport[:customer], phone: @technpassport[:phone])
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
  end

  def update_attributes
  end

  def client_params
      params.require(:client).permit(:name, :phone)
  end
end
