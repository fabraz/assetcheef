class InvestmentFund < ActiveRecord::Base
  belongs_to :wallet
  def gross_profit
    gross_income = self[:capital]*(years_of_investment*0.12)
  end

  def liquid_profit
    liquid_income = gross_profit - (gross_profit*ir_tax(days_of_investment) + gross_profit*(years_of_investment*(self[:admTax]/100)))
  end

  def years_of_investment
    (Date.today.year-self[:buyDate].year).to_i
  end

  def days_of_investment
    (Date.today.to_date-self[:buyDate]).to_i
  end
  
  def ir_tax(days)
    
    raise InvalidNumberOfDays if days < 0
    
    if(0 <= days && days <= 180)
    0.25
    elsif(181 <= days && days <= 361)
    0.20
    elsif(362 <= days && days <= 720)
    0.175
    elsif(days > 720)
    0.15
  end
  end
end
