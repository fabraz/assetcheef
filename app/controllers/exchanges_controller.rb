class ExchangesController < ApplicationController
  before_action :set_exchange, only: [:show, :edit, :update, :destroy]

  # GET /exchanges
  def index
    @exchanges = Exchange.all
  end

  # GET /exchanges/1
  def show
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
        @exchange.assign_attributes(:dollar_quotation => result["dolar"]["cotacao"])
        @exchange.assign_attributes(:euro_quotation => result["euro"]["cotacao"])
        @exchange.assign_attributes(:variation_dollar => result["dolar"]["variacao"]) 
        @exchange.assign_attributes(:variation_euro => result["euro"]["variacao"]) 


      end
  end

  def calculate_exchange(exchange)
    print "kdlslakldmslaskamdklsmdklamadlsmdklsamaslkdsmdlkasmdlamkdsa"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exchange
      @exchange = Exchange.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exchange_params
      params.require(:exchange).permit(:exchange_type, :initial_income)
    end




end
