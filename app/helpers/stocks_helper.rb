module StocksHelper

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

end
