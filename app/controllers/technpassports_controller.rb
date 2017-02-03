class TechnpassportsController < ApplicationController

  def new
    @technpassport = Technpassport.new
  end

  def create
    @technpassport = Technpassport.new(technpassport_params)
    if @technpassport.save
      if Client.where(phone: @technpassport.phone).exists?
        @client = Client.find_by_phone(@technpassport.phone)
        @client.update_attributes(:sum => @client[:sum]+@technpassport.payment)
      else
       @client = Client.create(name: @technpassport.name, vorname: @technpassport.vorname,
                               patronymic: @technpassport.patronymic, phone: @technpassport.phone,
                               sum: @technpassport.payment, date_in: @technpassport.date_in)
      end
      redirect_to @technpassport
    else
      render 'new'
    end
    respond_to do |format|
      format.html {}
      format.js   {render json: @technpassport}
      format.json {}
    end
  end

  def index
    @technpassports = Technpassport.all
  end


  def show
    @technpassport = Technpassport.find(params[:id])
    if (@technpassport.discount != nil)
      @technpassport.update_attributes(debt: @technpassport.amount*(100-@technpassport.discount)/100 - @technpassport.payment)
    else
      @technpassport.update_attributes(debt: @technpassport.amount - @technpassport.payment)
    end
    render :layout => "layout_for_show_only"
  end

  def edit
    @technpassport = Technpassport.find(params[:id])
    if (@technpassport.discount != nil)
      @technpassport.update_attributes(debt: @technpassport.amount*(100-@technpassport.discount)/100 - @technpassport.payment)
    else
      @technpassport.update_attributes(debt: @technpassport.amount - @technpassport.payment)
    end
  end

  def update
    @technpassport = Technpassport.find(params[:id])
    @payment = @technpassport.payment
    if @technpassport.update_attributes(technpassport_params)
      flash[:success] = "Passport updated"
      @technpassport.update_attributes(payment: @technpassport.payment + @payment)
      redirect_to @technpassport
    else
      render 'edit'
    end
  end

  def search
    @technpassport = Technpassport.find_by(search_params)
    render 'technpassports/search_technpassports'
  end

  def search_technpassports
    @technpassport = Technpassport.find_by(search_params)
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

  def search_params
      params.require(:technpassport).permit(:id)
  end
end
