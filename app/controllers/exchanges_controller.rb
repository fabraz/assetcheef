class ExchangesController < ApplicationController
  before_action :set_exchange, only: [:show, :edit, :update, :destroy]
  helper_method :discount, :convert, :convert_current_income

  # GET /exchanges
  def index
    @exchanges = Exchange.all
  end

  # GET /exchanges/1
  def show
  end

  def convert

    if @exchange[:exchange_type] == "Dolar"
      dollar_quotation = @exchange[:initial_dollar_quotation]
      initial_income = @exchange[:initial_income] 
      reais = dollar_quotation*initial_income
    elsif @exchange[:exchange_type] == "Euro"
      euro_quotation = @exchange[:initial_euro_quotation]
      initial_income = @exchange[:initial_income]
      reais = euro_quotation*initial_income
    end

    return reais

  end

  def convert_current_income
    json_request
    if @exchange[:exchange_type] == "Dolar"
      dollar_quotation = @exchange[:dollar_quotation]
      initial_income = @exchange[:initial_income] 
      reais = dollar_quotation*initial_income
    elsif @exchange[:exchange_type] == "Euro"
      euro_quotation = @exchange[:euro_quotation]
      initial_income = @exchange[:initial_income]
      reais = euro_quotation*initial_income
    end
    reais = reais - discount
    return reais

    
  
  end

  def discount
    iof_tax = 0.38
    initial_income = @exchange[:initial_income]
    discount = (iof_tax/100)*initial_income
    return discount
  end

  # GET /exchanges/new
  def new
    @exchange = Exchange.new
    json_request
  end

  # GET /exchanges/1/edit
  def edit
  end

  # POST /exchanges
  def create
    @exchange = Exchange.new(exchange_params)

    if @exchange.save
      redirect_to @exchange, notice: 'Exchange was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /exchanges/1
  def update
    if @exchange.update(exchange_params)
      redirect_to @exchange, notice: 'Exchange was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /exchanges/1
  def destroy
    @exchange.destroy
    redirect_to exchanges_url, notice: 'Exchange was successfully destroyed.'
  end

  def json_request
      uri = URI.parse("http://developers.agenciaideias.com.br/cotacoes/json")
 
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
 
      response = http.request(request)
 
      if response.code == "200"
        result = JSON.parse(response.body)
        @exchange.update_attributes(:dollar_quotation => result["dolar"]["cotacao"])
        @exchange.update_attributes(:euro_quotation => result["euro"]["cotacao"])
        @exchange.update_attributes(:variation_dollar => result["dolar"]["variacao"]) 
        @exchange.update_attributes(:variation_euro => result["euro"]["variacao"]) 

        @exchange.update_attributes(:initial_dollar_quotation => @exchange[:dollar_quotation])
        @exchange.update_attributes(:initial_euro_quotation => @exchange[:euro_quotation])


      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exchange
      @exchange = Exchange.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exchange_params
      params.require(:exchange).permit(:exchange_type, :initial_income,:Wallet_id,:dollar_quotation)
    end




end
