require 'rails_helper'

RSpec.describe Stock, type: :model do
	describe "inheritance" do
		it { Stock.should < Asset}
	end
end
