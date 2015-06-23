require 'test_helper'

class InvestmentFundsControllerTest < ActionController::TestCase
  setup do
    @investment_fund = investment_funds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investment_funds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investment_fund" do
    assert_difference('InvestmentFund.count') do
      post :create, investment_fund: { aditionalInfo: @investment_fund.aditionalInfo, admTax: @investment_fund.admTax, buyDate: @investment_fund.buyDate, capital: @investment_fund.capital, exitTax: @investment_fund.exitTax, fundBegin: @investment_fund.fundBegin, manager: @investment_fund.manager, managerContact: @investment_fund.managerContact, name: @investment_fund.name, shareValue: @investment_fund.shareValue, wallet_id: @investment_fund.wallet_id }
    end

    assert_redirected_to investment_fund_path(assigns(:investment_fund))
  end

  test "should show investment_fund" do
    get :show, id: @investment_fund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investment_fund
    assert_response :success
  end

  test "should update investment_fund" do
    patch :update, id: @investment_fund, investment_fund: { aditionalInfo: @investment_fund.aditionalInfo, admTax: @investment_fund.admTax, buyDate: @investment_fund.buyDate, capital: @investment_fund.capital, exitTax: @investment_fund.exitTax, fundBegin: @investment_fund.fundBegin, manager: @investment_fund.manager, managerContact: @investment_fund.managerContact, name: @investment_fund.name, shareValue: @investment_fund.shareValue, wallet_id: @investment_fund.wallet_id }
    assert_redirected_to investment_fund_path(assigns(:investment_fund))
  end

  test "should destroy investment_fund" do
    assert_difference('InvestmentFund.count', -1) do
      delete :destroy, id: @investment_fund
    end

    assert_redirected_to investment_funds_path
  end
end
