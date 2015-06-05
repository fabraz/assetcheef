require 'rails_helper'

RSpec.describe Asset, type: :model do
	describe Asset do
		it { should belong_to(:wallet) }
	end 
 
end
