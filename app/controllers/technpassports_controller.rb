class TechnpassportsController < ApplicationController

  def new
    @technpassport = Technpassport.new
  end

  def create
    @technpassport = Technpassport.new(technpassport_params)
    if @technpassport.save
     # if Client.where(phone: @technpassport.phone).exists?
     #   @client = Client.find_by_phone(@technpassport.phone)
     #   @client.update_attributes(:sum => @client[:sum]+1)
     # else
     #  @client = Client.create(name: @technpassport.customer, phone: @technpassport.phone, sum: 0)
     # end
      redirect_to @technpassport
    else
      render 'new'
    end
  end

  def index
  end


  def show
    @technpassport = Technpassport.find(params[:id])
    render :layout => "layout_for_show_only"
  end

  def technpassport_params
      params.require(:technpassport).permit(:phone, :email, :product,
                                   :date_in, :date_out, :name, :vorname, :patronymic, :condition,
                                   :wear, :guarantee, :damage, :manipulation1, :undergo,
                                   :manipulation2, :manipulation3, :manipulation4,
                                   :price1, :price2, :price3, :price4, :amount,
                                   :discount, :payment, :debt, :time_weared, :care_symbols, :effects,
                                   :spots, :origin_spots, :other_defects, :pr_scin_color, :pr_fur_color,
                                   :worn_pl, :guarantee, :damage,)

  end
end
