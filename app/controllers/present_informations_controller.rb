class PresentInformationsController < ApplicationController
  def home
    @client = Client.new
    @technpassport = Technpassport.new
  end
end
