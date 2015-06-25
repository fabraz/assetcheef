class InvestmentFundsController < ApplicationController
  before_action :set_investment_fund, only: [:show, :edit, :update, :destroy]

  # GET /investment_funds
  def index
    @investment_funds = InvestmentFund.all
  end

  # GET /investment_funds/1
  def show
  end

  # GET /investment_funds/new
  def new
    @investment_fund = InvestmentFund.new
  end

  # GET /investment_funds/1/edit
  def edit
  end

  # POST /investment_funds
  def create
    @investment_fund = InvestmentFund.new(investment_fund_params)

    if @investment_fund.save
      redirect_to @investment_fund, notice: 'Investment fund was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /investment_funds/1
  def update
    if @investment_fund.update(investment_fund_params)
      redirect_to @investment_fund, notice: 'Investment fund was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /investment_funds/1
  def destroy
    @investment_fund.destroy
    redirect_to investment_funds_url, notice: 'Investment fund was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_fund
      @investment_fund = InvestmentFund.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def investment_fund_params
      params.require(:investment_fund).permit(:name, :buyDate, :admTax, :aditionalInfo, :exitTax, :fundBegin, :manager, :managerContact, :shareValue, :capital, :wallet_id, :closing_price, :closing_date)
    end
end
