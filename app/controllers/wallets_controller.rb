class WalletsController < ApplicationController
  before_action :set_wallet, only: [:show, :edit, :update, :destroy]

  # GET /wallets
  def index
    @wallets = Wallet.all
  end

  # GET /wallets/1
  def show
  end

  # GET /wallets/new
  def new
    @wallet = Wallet.new
  end

  # GET /wallets/1/edit
  def edit
  end

  # POST /wallets
  def create
    @wallet = Wallet.new(wallet_params)

    if @wallet.save
      redirect_to @wallet, notice: 'Wallet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wallets/1
  def update
    if @wallet.update(wallet_params)
      redirect_to @wallet, notice: 'Wallet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wallets/1
  def destroy
    @wallet.destroy
    redirect_to wallets_url, notice: 'Wallet was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet
      @wallet = Wallet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wallet_params
      params.require(:wallet).permit(:name, :description, :user_id)
    end
end
