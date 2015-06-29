class StocksController < ApplicationController
  include StocksHelper
  
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
 
  # GET /stocks
 
  def index
    @stocks = Stock.all
  end

  # GET /stocks/1
  def show
      @stock = Stock.find(params[:id])
  end

  #GET /stocks/
  def stocks_list
    @stocks = Stock.all
  end

  def stocks_movimentation
    @stock2 = Stock.find(params[:id])
  end
  

  # GET /stocks/new
  def new
    @stock = Stock.new
  end

  # GET /stocks/1/edit
  def edit
  end

  # POST /stocks
  def create
    @stock = Stock.new(stock_params)

    if @stock.save
      redirect_to @stock, notice: 'Stock was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /stocks/1
  def update
    if @stock.update(stock_params)
      redirect_to @stock, notice: 'Stock was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /stocks/1
  def destroy
    @stock.destroy
    redirect_to stocks_url, notice: 'Stock was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stock_params
      params.require(:stock).permit(:name, :initial_income, :current_income, :buy_date, :buy_tax, :amount, :Wallet_id, :closing_price, :closing_date)
    end
end

