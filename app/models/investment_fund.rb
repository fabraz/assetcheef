class InvestmentFund < ActiveRecord::Base
  belongs_to :wallet
  def gross_profit
    gross_income = self[:capital]*0.12
  end

  def liquid_profit
    days = (Date.today.to_date-self[:buyDate]).to_i
    years = (Date.today.year-self[:buyDate].year).to_i
    liquid_income = gross_profit*ir_tax(days) - gross_profit*(years*(self[:admTax]/100))
    
  end

  def ir_tax(days)
    if(0 <= days && days <= 180)
    0.25
    elsif(181 <= days && days <= 361)
    0.20
    elsif(362 <= days && days <= 720)
    0.175
    elsif(days > 720)
    0.15
    else
      "Erro"
    end
  end
end
