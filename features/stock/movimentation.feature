Feature: Stock Movimentation
	
	Scenario: Viewing stocks Movimentation
		Given I am an user
		And I am signed in
		And I have a Wallet
		And there's a sample stock
		When I am on the stocks_show
		And I click on Moviment link
		Then I should see "Gross Income: 10000.0 R$"
		And I should see "Liquid Income: 7872.34 R$"
		And I should see "Brokerage 	Emoluments 	Custody 	Income Tax"
		And I should see "600.0 R$ 	97.5 R$ 	40.92 R$ 	1389.24 R$"