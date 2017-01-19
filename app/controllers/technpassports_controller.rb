class TechnpassportsController < ApplicationController
  def new
    @technpassport = Technpassport.new
  end

  def create
    @technpassport = Technpassport.new(user_params)
    if @technpassport.save
      redirect_to @technpassport
    else
      render 'new'
    end
  end

  def index
  end


  def show
    @technpassport = Technpassport.find(params[:id])
  end

  def user_params
      params.require(:technpassport).permit(:customer, :phone, :email, :product,
                                   :date_in)
    end
end
