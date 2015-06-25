class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
  helper_method :gross_income,:liquid_income, :brokerage, :emoluments, :custody, :income_tax 
  # GET /stocks
 
  def index
    @stocks = Stock.all
  end

  # GET /stocks/1
  def show
  end

  #GET /stocks/

  def gross_income
    initial = @stock[:initial_income] 
    current = @stock[:current_income] 
    
    return (current - initial) * @stock[:amount]
  
  end

  def brokerage
    initial = @stock[:initial_income] * @stock[:amount]
    
    brokerage_tax_low = 0.0025
    brokerage_tax_high = 0.0020

    if initial > 0.01 and initial < 50000
      brokerage = initial * brokerage_tax_low
      return brokerage
    elsif initial > 50000
      brokerage = initial * brokerage_tax_high
      return brokerage
    end
  end

  def  emoluments
     initial = @stock[:initial_income] * @stock[:amount]
     
     emoluments_tax = 0.000325

    return (initial)*emoluments_tax
  end

  def custody
      current = @stock[:current_income] * @stock[:amount]
      
      free = 0

      custody_tax_low = 0.000132
      custody_tax_high = 0.000076

      if current > 0.01 and current < 300000 # menor que 300 mil insento
        return free
      elsif current > 300000 and current < 1000000 # entre 300 mil e 1 milhão 
        return current * custody_tax_low
      elsif current > 1000000 and 10000000 # entre 1 milhão e 10 milhão
        return current * custody_tax_high
      end 
  end
      
  def income_tax 

    current = @stock[:current_income] * @stock[:amount]
    
    liquid_income = gross_income - (custody + emoluments + brokerage) 
    
    free = 0
    total_sale = @stock[:current_income] * @stock[:amount]
    income_tax = 0.15

    if total_sale > 20000
      return liquid_income * income_tax
    else
      return free
    end
  end

  def liquid_income

    return liquid_income = gross_income - income_tax
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
      params.require(:stock).permit(:name, :initial_income, :current_income, :buy_date, :buy_tax, :amount, :Wallet_id)
    end  
end