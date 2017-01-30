class ClientsController < ApplicationController

  def new
  #@technpassport = Technpassport.find(params[:id])
  #@client = Client.new(name: @technpassport[:customer], phone: @technpassport[:phone])
  end

  def create
    #@technpassport = Technpassport.find(params[:id])
    #@client = Client.new(name: @technpassport[:customer], phone: @technpassport[:phone])
  end

  def show
    @client = Client.find(params[:id])
    @technpassports = Technpassport.where(phone: @client.phone)
  end

  def index
    @clients = Client.all
  end

  def edit
  end

  def update_attributes
  end

  def search
    if (@client= Client.where(search_params1)).blank?
      if (@client= Client.where(search_params2)).blank?
        @clients = Client.where(search_params3)
      elsif (@client= Client.where(search_params3)).blank?
        @clients = Client.where(search_params2)
      else
        @clients = Client.where(search_params3,search_params2)
      end
    else
      @clients = Client.where(search_params1)
    end
        #redirect_to :controller => :clients, :action => :search_clients
    render 'clients/search_clients'
  end

  def search_clients
    if (@client= Client.where(search_params1)).blank?
      if (@client= Client.where(search_params2)).blank?
        @clients = Client.where(search_params3)
      elsif (@client= Client.where(search_params3)).blank?
        @clients = Client.where(search_params2)
      else
        @clients = Client.where(search_params3,search_params2)
      end
    else
      @clients = Client.where(search_params1)
    end
  end

  def client_params
      params.require(:client).permit(:name, :phone, :vorname, :patronymic,
                                     :sum, :date_in)
  end

  def search_params1
      params.require(:client).permit(:phone)
  end

  def search_params2
      params.require(:client).permit(:name)
  end

  def search_params3
      params.require(:client).permit(:vorname)
  end
end
